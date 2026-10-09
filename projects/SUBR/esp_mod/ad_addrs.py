import json
j = json.load(open(r'D:\APK-Reverse\projects\SUBR\il2cpp_dump\script.json', encoding='utf-8'))
want = ['ShowInterstitial','ShowCustomInterstitial','ShowRewerdVideo','StartAd','InterstitialClosed',
        'RewardAdClosed','CompleteMethod','ReqUnlockAd','ReqInter','ReqReward','CloseThis',
        'CancelAndClose','ShowBanner','HideBanner','BannerLoaded','Started','Update','Awake']
for e in j['ScriptMethod']:
    n = e.get('Name', '')
    if not n.startswith('adManager$$'):
        continue
    short = n.split('$$', 1)[1]
    if short in want:
        print(hex(e['Address']), n, '|', e['Signature'][:130])
