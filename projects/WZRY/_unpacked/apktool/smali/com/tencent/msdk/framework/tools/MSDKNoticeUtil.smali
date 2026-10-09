.class public Lcom/tencent/msdk/framework/tools/MSDKNoticeUtil;
.super Ljava/lang/Object;
.source "MSDKNoticeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteExpireNoticeData(Ljava/lang/String;)V
    .locals 4
    .param p0, "invalidMsgIds"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    const-string v2, "invalidMsgIds is null"

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 39
    :goto_0
    return-void

    .line 35
    :cond_0
    new-instance v0, Lcom/tencent/msdk/db/NoticeDBModel;

    invoke-direct {v0}, Lcom/tencent/msdk/db/NoticeDBModel;-><init>()V

    .line 36
    .local v0, "model":Lcom/tencent/msdk/db/NoticeDBModel;
    invoke-virtual {v0, p0}, Lcom/tencent/msdk/db/NoticeDBModel;->deleteNoticeInDBByMsgList(Ljava/lang/String;)I

    move-result v1

    .line 37
    .local v1, "tempNum":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Num of notice has been deleted\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNoticeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0, "appid"    # Ljava/lang/String;
    .param p1, "openid"    # Ljava/lang/String;
    .param p2, "scene"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getNoticeData of appid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " openid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " scene:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 66
    const-string v7, ""

    .line 67
    .local v7, "noticeDataStr":Ljava/lang/String;
    new-instance v5, Lcom/tencent/msdk/db/NoticeDBModel;

    invoke-direct {v5}, Lcom/tencent/msdk/db/NoticeDBModel;-><init>()V

    .line 69
    .local v5, "model":Lcom/tencent/msdk/db/NoticeDBModel;
    invoke-static/range {p0 .. p0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static/range {p2 .. p2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 71
    invoke-virtual {v5}, Lcom/tencent/msdk/db/NoticeDBModel;->getAllNoticeRecord()Ljava/util/Vector;

    move-result-object v9

    .line 77
    .local v9, "noticeInfos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/tencent/msdk/notice/NoticeInfo;>;"
    :goto_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 79
    .local v11, "noticeListJson":Lorg/json/JSONObject;
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 80
    .local v6, "noticeArray":Lorg/json/JSONArray;
    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/msdk/notice/NoticeInfo;

    .line 82
    .local v8, "noticeInfo":Lcom/tencent/msdk/notice/NoticeInfo;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 83
    .local v10, "noticeJson":Lorg/json/JSONObject;
    const-string v15, "appid"

    iget-object v0, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mAppId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v15, "msgid"

    iget-object v0, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v15, "msgContent"

    iget-object v0, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContent:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v15, "msgUrl"

    iget-object v0, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string/jumbo v15, "title"

    iget-object v0, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v15, "noticeType"

    iget-object v0, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeType:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->val()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string v15, "beginTime"

    iget-object v0, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeStartTime:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v15, "endTime"

    iget-object v0, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeEndTime:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v15, "openid"

    iget-object v0, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mOpenId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v15, "scene"

    iget-object v0, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeScene:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v15, "contentType"

    iget-object v0, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContentType:Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;->val()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string v15, "contentUrl"

    iget-object v0, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContentWebUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v15, "order"

    iget-object v0, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeOrder:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v15, "custom"

    iget-object v0, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeCustom:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    iget-object v15, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContentType:Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;

    sget-object v16, Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;->eMSG_CONTENTTYPE_IMAGE:Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 99
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 100
    .local v12, "picArray":Lorg/json/JSONArray;
    iget-object v15, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgUrl:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_0

    iget-object v15, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgHash:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_0

    .line 102
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 103
    .local v4, "hPicJson":Lorg/json/JSONObject;
    const-string v15, "picUrl"

    iget-object v0, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v15, "hashValue"

    iget-object v0, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgHash:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v15, "screenDir"

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 106
    invoke-virtual {v12, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 109
    .end local v4    # "hPicJson":Lorg/json/JSONObject;
    :cond_0
    iget-object v15, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgUrl:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1

    iget-object v15, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgHash:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1

    .line 111
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 112
    .local v13, "vPicJson":Lorg/json/JSONObject;
    const-string v15, "picUrl"

    iget-object v0, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v15, "hashValue"

    iget-object v0, v8, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgHash:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v15, "screenDir"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 118
    .end local v13    # "vPicJson":Lorg/json/JSONObject;
    :cond_1
    const-string v15, "picUrlList"

    invoke-virtual {v10, v15, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    .end local v12    # "picArray":Lorg/json/JSONArray;
    :cond_2
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 125
    .end local v6    # "noticeArray":Lorg/json/JSONArray;
    .end local v8    # "noticeInfo":Lcom/tencent/msdk/notice/NoticeInfo;
    .end local v10    # "noticeJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 126
    .local v3, "e":Lorg/json/JSONException;
    const-string v14, "Change to json string error"

    invoke-static {v14}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 129
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got notice data,count:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " data:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 130
    return-object v7

    .line 74
    .end local v9    # "noticeInfos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/tencent/msdk/notice/NoticeInfo;>;"
    .end local v11    # "noticeListJson":Lorg/json/JSONObject;
    :cond_3
    sget-object v14, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->eMSG_NOTICETYPE_ALL:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v5, v0, v1, v14, v2}, Lcom/tencent/msdk/db/NoticeDBModel;->getNoticeRecordBySceneAndType(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v9

    .restart local v9    # "noticeInfos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/tencent/msdk/notice/NoticeInfo;>;"
    goto/16 :goto_0

    .line 123
    .restart local v6    # "noticeArray":Lorg/json/JSONArray;
    .restart local v11    # "noticeListJson":Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    const-string v14, "list"

    invoke-virtual {v11, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_2
.end method

.method public static getNoticeLastUpdateTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "appid"    # Ljava/lang/String;
    .param p1, "openid"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Lcom/tencent/msdk/db/NoticeDBModel;

    invoke-direct {v0}, Lcom/tencent/msdk/db/NoticeDBModel;-><init>()V

    .line 25
    .local v0, "model":Lcom/tencent/msdk/db/NoticeDBModel;
    invoke-virtual {v0, p0, p1}, Lcom/tencent/msdk/db/NoticeDBModel;->getLastUpdateTimeByAppIdAndOpenId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "updateTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 27
    return-object v1
.end method

.method public static getNoticePictureInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "msgid"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v2, Lcom/tencent/msdk/db/NoticeDBModel;

    invoke-direct {v2}, Lcom/tencent/msdk/db/NoticeDBModel;-><init>()V

    .line 135
    .local v2, "model":Lcom/tencent/msdk/db/NoticeDBModel;
    sget-object v8, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->eMSG_NOTICETYPE_ALL:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    invoke-virtual {v2, p0, v8}, Lcom/tencent/msdk/db/NoticeDBModel;->getNoticeRecordByMsgId(Ljava/lang/String;Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;)Ljava/util/Vector;

    move-result-object v4

    .line 137
    .local v4, "noticeInfos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/tencent/msdk/notice/NoticeInfo;>;"
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 139
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/msdk/notice/NoticeInfo;

    .line 140
    .local v3, "noticeInfo":Lcom/tencent/msdk/notice/NoticeInfo;
    iget-object v8, v3, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeContentType:Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;

    sget-object v9, Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;->eMSG_CONTENTTYPE_IMAGE:Lcom/tencent/msdk/notice/eMSG_CONTENTTYPE;

    if-ne v8, v9, :cond_2

    .line 142
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 145
    .local v6, "picJson":Lorg/json/JSONObject;
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 146
    .local v5, "picArray":Lorg/json/JSONArray;
    iget-object v8, v3, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgUrl:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    iget-object v8, v3, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgHash:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 148
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 149
    .local v1, "hPicJson":Lorg/json/JSONObject;
    const-string v8, "picUrl"

    iget-object v9, v3, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgUrl:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v8, "hashValue"

    iget-object v9, v3, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeHImgHash:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v8, "screenDir"

    const/4 v9, 0x2

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 155
    .end local v1    # "hPicJson":Lorg/json/JSONObject;
    :cond_0
    iget-object v8, v3, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgUrl:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    iget-object v8, v3, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgHash:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 157
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 158
    .local v7, "vPicJson":Lorg/json/JSONObject;
    const-string v8, "picUrl"

    iget-object v9, v3, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgUrl:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v8, "hashValue"

    iget-object v9, v3, Lcom/tencent/msdk/notice/NoticeInfo;->mNoticeVImgHash:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v8, "screenDir"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 161
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 164
    .end local v7    # "vPicJson":Lorg/json/JSONObject;
    :cond_1
    const-string v8, "picUrlList"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v5    # "picArray":Lorg/json/JSONArray;
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 172
    .end local v3    # "noticeInfo":Lcom/tencent/msdk/notice/NoticeInfo;
    .end local v6    # "picJson":Lorg/json/JSONObject;
    :goto_1
    return-object v8

    .line 165
    .restart local v3    # "noticeInfo":Lcom/tencent/msdk/notice/NoticeInfo;
    .restart local v6    # "picJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Lorg/json/JSONException;
    const-string v8, "Change to json string error"

    invoke-static {v8}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "noticeInfo":Lcom/tencent/msdk/notice/NoticeInfo;
    .end local v6    # "picJson":Lorg/json/JSONObject;
    :cond_2
    const-string v8, ""

    goto :goto_1
.end method

.method public static saveNoticeData(Ljava/lang/String;)V
    .locals 7
    .param p0, "msgData"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    const-string v5, "msgData is null"

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "To save msgData:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 49
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 52
    const-string/jumbo v5, "updateTime"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "updateTime":Ljava/lang/String;
    new-instance v3, Lcom/tencent/msdk/notice/NoticeInfo;

    invoke-direct {v3}, Lcom/tencent/msdk/notice/NoticeInfo;-><init>()V

    .line 54
    .local v3, "noticeItem":Lcom/tencent/msdk/notice/NoticeInfo;
    invoke-virtual {v3, v1, v4}, Lcom/tencent/msdk/notice/NoticeInfo;->getBaseInfoFromJson(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 55
    new-instance v2, Lcom/tencent/msdk/db/NoticeDBModel;

    invoke-direct {v2}, Lcom/tencent/msdk/db/NoticeDBModel;-><init>()V

    .line 56
    .local v2, "model":Lcom/tencent/msdk/db/NoticeDBModel;
    invoke-virtual {v2, v3}, Lcom/tencent/msdk/db/NoticeDBModel;->save(Lcom/tencent/msdk/notice/NoticeInfo;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "model":Lcom/tencent/msdk/db/NoticeDBModel;
    .end local v3    # "noticeItem":Lcom/tencent/msdk/notice/NoticeInfo;
    .end local v4    # "updateTime":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Save notice data failed!msgData:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
