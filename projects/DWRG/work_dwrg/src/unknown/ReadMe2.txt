version=1.3.1

#changeLog
#2017-10-30
升级至1.3.1
1. 需要的母包版本：1.1.2
2. 无新增接口

#2017-08-08
升级至1.3
1. 需要的母包版本：1.1.2
2. 无新增接口

#2017-06-27
升级至1.2(7)
1. 需要的母包版本：1.1.2
2. 无新增接口

#2017-04-11
升级至1.2(6)
1. 需要的母包版本：1.1.2
2. 新增检查分享参数ntCheckArgs接口，修复微博分享授权多次问题

#2016-10-24
升级至1.2(5)
1. 需要的母包版本：1.1.2
2. 加入微信关注公众号功能，使用方式如：
    ShareInfo info = new ShareInfo();
    info.setShareChannel(ConstProp.NT_SHARE_TYPE_WEIXIN_ATTENTION);//NT_SHARE_TYPE_WEIXIN_ATTENTION=118
    info.setToUser(weixin_id);//需要关注的公众号id
    SdkMgr.getInst().ntShare(info);

#2016-10-21
升级至1.2(4)
1. 需要的母包版本：1.1.2
2. 加入微博关注功能，使用方式如：
    ShareInfo info = new ShareInfo();
    info.setShareChannel(ConstProp.NT_SHARE_TYPE_WEIBO_ATTENTION);//NT_SHARE_TYPE_WEIBO_ATTENTION=117
    info.setToUser(weibo_uid);//需要关注的人的微博uid
    info.setShowShareDialog(false);//true-有节面、false无界面
    SdkMgr.getInst().ntShare(info);

#2016-06-24
升级至1.2(3)
1. 需要的母包版本：1.1.2
2. 修复微博第一次分享失败问题