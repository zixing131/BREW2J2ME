"""Deterministic native item/quest text extraction. No network translation at build time."""
import json, struct
from pathlib import Path

TYPES='短剑 太刀 巨剑 光剑 肩甲 上衣 下装 手镯 戒指 称号 宠物 材料 卡片 生命药水 魔力药水 恢复药剂 辅助药剂 特殊道具 罐子 任务物品'.split()
MATERIALS='布片 旧皮革 风化的碎骨 生锈的铁片 最下级硬化剂 最下级砥石 粗糙的布片 薄皮革 修整的骨片 柔软的铁片 下级硬化剂 下级砥石 普通布片 普通皮革 普通骨片 普通铁片 中级硬化剂 中级砥石 厚布片 厚皮革 粗骨片 坚硬的铁片 上级硬化剂 上级砥石 高级布片 高级皮革 高级骨片 钢铁碎片 最上级硬化剂 最上级砥石 血流石 海蓝宝石 钻石 黑曜石 玛瑙 火焰石 冰结石 闪光石 黑影石 透明石 黑色小晶块 白色小晶块 红色小晶块 蓝色小晶块 无色小晶块 金色小晶块 黑色晶块 白色晶块 红色晶块 蓝色晶块 无色晶块 金色晶块 混沌魔石 光辉魔石碎片 光辉魔石 下级思念结晶 中级思念结晶 上级思念结晶 最上级思念结晶 凯尔顿的慈悲印章 斯卡迪女王的印章 赫尔姆皇帝的印章 夏农·迈耶的印章 燃烧恶魔的邀请函 蓝色恶魔的邀请函 凶猛恶魔的邀请函 火焰破魔石 蒸汽破魔石 野生破魔石 火焰宇宙眼 蒸汽宇宙眼 野生宇宙眼 白化碎片 深渊碎片 泰拉碎片 愿望碎片 下级元素结晶 上级元素结晶 强烈碎片 摩塔尔恐惧 清凉的米拉津果实 熟透的马雷果实 哥布林手骨 猫妖指甲 暗精灵守护精华 暗精灵罐 魔力水袋 卡尔卡扎克罐 可怕的遗物 黑暗项链 龙人之眼 尖晶石 萤石 锆石 圣痕丝绸 失重碎片 辛达的水瓶 柔韧的触须 锐利的尖刺 耀眼的结晶 龙炮炮身 邪恶的结晶 科尔科姆干扰芯片 压缩胶囊 劣质制造芯片 藤根 黑色硬化物 断裂的刀刃 辛达熔炉使用券 锐利的狼牙 雪山虎皮 红色羊皮纸 镐 空水瓶 灵魂结晶 泰拉石 魔力溶解剂 遗忘碎片 破损的遗忘碎片 白化精华 主人的凭证 海水结晶 深渊精华 怪异的钢铁碎片 帝国超导精华 班图的疯狂 修炼项链 研磨剂 背包扩充券一 背包扩充券二 交易许可证 代币 莱恩焦炭 雷米的河水 邮箱扩充券一 邮箱扩充券二 幼龙之心 哥布林黄金钥匙 混沌类星体 解放的古代印记 解放钥匙 封印锁 血染的传书 爆龙王巴卡尔的戒指 塞尔菲亚残破日记 机械牛动力装置 死神邀请函 强化礼包 高级强化礼包 奥利哈钢 黄道十二宫 封印气息戒指 封印气息手镯'.split()
SPECIAL={'0:1':'破损的铁剑','0:101':'闪亮的小刀','4:157':'新手肩甲','5:157':'新手上衣','6:157':'新手下装','19:13':'黑猫妖的毛皮','19:14':'新款衣服','19:33':'思念之石','19:43':'亡者遗忘的记忆','19:49':'多格里的精华','19:73':'GBL教徒的信物','19:87':'锐利的狼牙','19:88':'冰兔脚','19:192':'黑暗项链'}
MAIN_IDS=[0,1,2,3,4,5,6,9,10,18,19,20,21,22,28,29,30,31,40,41,52,53,63,64,65,66,67,68,77,78,79,85,86,87,89,90,98,115,116,117,129,130,142,146,147,160,161,165,171,172,173,177,180,182,190,194,198,211,214,215,220,252,253,254,255,256,257,258,259]
MAIN_TITLES='研究日志|胶囊破坏|赫顿玛尔的风振|鬼剑士G.S.D|铁匠林纳斯|趁手的武器|闪亮的小刀|牛头巨兽的暴行|希洛克的诅咒|坚持住，玛丽！|忧郁的巴隆|送给玛丽的礼物|黑猫妖的毛皮|送出新衣！|玛丽的临床试验|风振的委托|呼唤雷电的哥布林|白色哥布林的传说|深入森林的人|毒的气息|月光酒馆的索西雅|疯狂的魔法师|附魔师|温柔的索西雅|G.S.D的召唤|牛头王萨乌塔|思念之石的秘密|风振的请求|枯萎的树木|事件的线索|烈焰格拉卡的思念之石|黑暗中的亡者|黑暗的记忆|毁灭的痕迹|可疑的人群一|可疑的人群二|巴隆的倔强|人偶师多格里|武器商辛达|神秘的泉水|阴沉的老人|被放逐的女人|需要思念之石！|母爱|寻找母亲|莎兰的召唤|光之城主赛格哈特|扭曲的母爱|占卜师的预言|奥菲利亚·贝伊兰斯|调查GBL教神殿|让教徒们解脱|探索丛林|变异的树精|不见天日的炼狱|走向无尽的黑暗|贝希摩斯最高处|前往第一脊椎|灵魂的解放|大祭司诺克图努斯|使徒，你究竟想要什么|斯顿雪域|寻求帮助|敏泰与瓦尔娜|获得班图的认可一|获得班图的认可二|拉比纳哥哥|获得奥尔卡的认可|决战'.split('|')

def utf(s):
    b=s.encode('utf-8');return struct.pack('>H',len(b))+b

def extract(resources,build):
    monsters=(resources/'original/6.bd').read_bytes();count,stride=struct.unpack_from('<HH',monsters)
    assert stride==145 and len(monsters)==4+count*stride
    monster_text=json.loads((resources.parent/'localization/monsters-zh-CN.json').read_text())
    originals=[monsters[4+145*i+3:4+145*i+27].split(b'\0')[0].decode('cp949') for i in range(count)]
    assert set(originals)==set(monster_text)
    (resources/'monster-names.bin').write_bytes(struct.pack('>H',count)+b''.join(utf(monster_text[s]) for s in originals))
    source=(resources/'original/1.etc').read_bytes();off=0;out=bytearray();audit={}
    overrides=resources.parent/'localization/items-zh-CN.json'
    translated=json.loads(overrides.read_text()) if overrides.exists() else {}
    for t in range(20):
        n=source[off];off+=1;out+=struct.pack('>H',n)
        for i in range(n):
            size=source[off];off+=1;ko=source[off:off+size].decode('cp949',errors='replace');off+=size;key=f'{t}:{i}'
            zh=SPECIAL.get(key)
            if t==11 and i>0:zh=MATERIALS[i-1]
            if t in (13,14) and 1<=i<=7:zh=TYPES[t]+' '+str(i)
            zh=translated.get(key,zh)
            # Explicit numbered catalog labels for entries whose proper name is not translated yet.
            out+=utf(zh or (TYPES[t]+' · '+str(i)))
            audit[key]={'ko':ko,'zh':zh,'translated':zh is not None}
    assert off==len(source)
    (resources/'items-zh.bin').write_bytes(out)
    (build/'item-text-audit.json').write_text(json.dumps(audit,ensure_ascii=False,indent=2))
    assert len(MAIN_IDS)==len(MAIN_TITLES)
    titles=dict(zip(MAIN_IDS,MAIN_TITLES));titles.update({7:'风振的请求',8:'鬼剑士之路：试炼一'})
    (resources/'quest-titles.bin').write_bytes(struct.pack('>H',530)+b''.join(utf(titles.get(i,'委托 '+str(i))) for i in range(530)))
    # Follow native SC terminal opcodes 6/7 (ANI) and 8 (next quest).
    quest=(resources/'original/quest').read_bytes();npc=(resources/'original/npcInfo').read_bytes();off=1;events={};dialogues={}
    translations=json.loads((resources.parent/'localization/sc-zh-CN.json').read_text())
    for _ in range(npc[0]):
        count,mode,zone,field,stage,sc=struct.unpack_from('<BBBBBH',npc,off);off+=7
        script=(resources/f'original/{sc}.sc').read_bytes();pos=0
        for _ in range(count):
            npc_id=npc[off];off+=1;lists=[]
            for phase in range(2):
                n=npc[off];off+=1;lists.append(struct.unpack_from('<'+'H'*n,npc,off));off+=2*n
            conditions,ordinary,lines=struct.unpack_from('<BBH',script,pos);pos+=4+5*conditions+157*ordinary
            records=[script[pos+157*j:pos+157*(j+1)] for j in range(lines)];pos+=157*lines
            for phase,ids in enumerate(lists):
                for q in ids:
                    start=struct.unpack_from('<H',quest,2+225*q+161+2*phase)[0]
                    sequence=[]
                    for line in records[start:]:
                        op,_,_,speaker,value=struct.unpack_from('<BBHBH',line)
                        sequence.append({'op':op,'speaker':speaker,'value':value,'ko':line[7:].split(b'\0')[0].decode('cp949')})
                        if op in (4,5,6,7,8):
                            if op in (6,7,8):
                                key=(q,phase);event=(op,value)
                                assert key not in events or events[key]==event
                                events[key]=event
                            break
                    if q in MAIN_IDS or q in (7,8,213):
                        key=f'{q}:{phase}:{npc_id}'
                        # Mary appears in several towns; q147 has a native spelling-only variant.
                        canonical=lambda seq:[(v['op'],v['speaker'],v['value'],v['ko'].replace('어떻하지','어떡하지')) for v in seq]
                        assert key not in dialogues or canonical(dialogues[key])==canonical(sequence),key
                        dialogues[key]=sequence
        assert pos==len(script)
    assert off==len(npc)
    (resources/'quest-events.bin').write_bytes(struct.pack('>H',len(events))+b''.join(struct.pack('>HB BH',q,phase,op,value) for (q,phase),(op,value) in sorted(events.items())))
    assert set(translations)==set(dialogues), ('SC translation keys',set(dialogues)-set(translations),set(translations)-set(dialogues))
    out=bytearray(struct.pack('>H',len(dialogues)))
    for key,sequence in sorted(dialogues.items()):
        text=translations[key];assert len(text)==len(sequence),key
        q,phase,npc=map(int,key.split(':'));out+=struct.pack('>HBBH',q,phase,npc,len(text))
        for line,zh in zip(sequence,text):
            assert zh and not any('\uac00'<=c<='\ud7a3' for c in zh),key
            out+=bytes([line['speaker']])+utf(zh)
    (resources/'quest-dialogues.bin').write_bytes(out)
    (build/'mainline-sc.json').write_text(json.dumps(dialogues,ensure_ascii=False,indent=2))
