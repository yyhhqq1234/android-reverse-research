.class Lcom/tencent/tmselfupdatesdk/m;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmapkupdatesdk/ApkUpdateListener;


# instance fields
.field final synthetic a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;


# direct methods
.method constructor <init>(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V
    .locals 0

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/tencent/tmselfupdatesdk/m;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckUpdateFailed(Ljava/lang/String;)V
    .locals 13

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 1115
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    const-string v0, "TMSelfUpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arg0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    sget-boolean v0, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->isMergeApk:Z

    if-eqz v0, :cond_1

    .line 1121
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/m;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v1, 0x66

    const/16 v2, -0xc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCheckUpdateFailed; message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    .line 1130
    :goto_1
    const-string v0, "TMSelfUpdateManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    return-void

    .line 1121
    :cond_0
    const-string p1, ""

    goto :goto_0

    .line 1126
    :cond_1
    new-instance v1, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;

    const/4 v2, 0x1

    const-string v8, ""

    const-string v9, ""

    const-string v11, ""

    move-wide v6, v4

    move v10, v3

    move v12, v3

    invoke-direct/range {v1 .. v12}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;-><init>(IIJJLjava/lang/String;Ljava/lang/String;BLjava/lang/String;I)V

    .line 1128
    iget-object v0, p0, Lcom/tencent/tmselfupdatesdk/m;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-static {v0, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;)V

    goto :goto_1
.end method

.method public onCheckUpdateSucceed(Ljava/util/ArrayList;)V
    .locals 14

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x2

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 1135
    const-string v1, "TMSelfUpdateManager"

    const-string v7, "enter"

    invoke-static {v1, v7}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 1140
    const-string v1, "TMSelfUpdateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCheckUpdateSucceed apkUpdateDetailList size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;

    .line 1144
    sget-boolean v7, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->isMergeApk:Z

    if-eqz v7, :cond_3

    .line 1146
    if-eqz v1, :cond_2

    .line 1148
    const-string v3, "TMSelfUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selfUpdateDetail:pakgname="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->packageName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; versioncode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->versioncode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; updatemethod="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->updatemethod:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; url="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->url:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; overwriteChannelid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v4, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->overwriteChannelid:B

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/m;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget v3, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->updatemethod:I

    iput v3, v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->h:I

    .line 1152
    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/m;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-object v3, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->url:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->i:Ljava/lang/String;

    .line 1153
    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/m;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    iget-byte v1, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->overwriteChannelid:B

    iput-byte v1, v2, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->overwriteChannelid:B

    .line 1156
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/m;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-static {v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;)V

    .line 1214
    :goto_2
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    return-void

    .line 1148
    :cond_0
    const-string v2, ""

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 1160
    :cond_2
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/m;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v2, 0x66

    const/16 v3, -0xd

    const-string v4, "onCheckUpdateSucceed,but apkUpdateDetailList is null!"

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto :goto_2

    .line 1166
    :cond_3
    if-eqz v1, :cond_6

    .line 1170
    iget v4, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->updatemethod:I

    if-ne v4, v6, :cond_4

    move v4, v3

    .line 1185
    :goto_3
    new-instance v2, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;

    iget v5, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->newapksize:I

    int-to-long v5, v5

    iget v7, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->patchsize:I

    int-to-long v7, v7

    iget-object v9, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->newFeature:Ljava/lang/String;

    iget-object v10, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->url:Ljava/lang/String;

    iget-byte v11, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->overwriteChannelid:B

    iget-object v12, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->versionname:Ljava/lang/String;

    iget v13, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->versioncode:I

    invoke-direct/range {v2 .. v13}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;-><init>(IIJJLjava/lang/String;Ljava/lang/String;BLjava/lang/String;I)V

    .line 1188
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/m;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-static {v1, v2}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;)V

    goto :goto_2

    .line 1175
    :cond_4
    iget v4, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->updatemethod:I

    if-ne v4, v2, :cond_5

    move v4, v6

    .line 1177
    goto :goto_3

    .line 1180
    :cond_5
    iget v4, v1, Lcom/tencent/tmapkupdatesdk/model/ApkUpdateDetail;->updatemethod:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_9

    move v4, v2

    .line 1182
    goto :goto_3

    .line 1192
    :cond_6
    new-instance v1, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;

    const-string v8, ""

    const-string v9, ""

    const-string v11, ""

    move-wide v6, v4

    move v10, v3

    move v12, v3

    invoke-direct/range {v1 .. v12}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;-><init>(IIJJLjava/lang/String;Ljava/lang/String;BLjava/lang/String;I)V

    .line 1194
    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/m;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-static {v2, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;)V

    goto :goto_2

    .line 1201
    :cond_7
    const-string v1, "TMSelfUpdateManager"

    const-string v2, "apkUpdateDetailList == null || apkUpdateDetailList.size() <=0"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    sget-boolean v1, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->isMergeApk:Z

    if-eqz v1, :cond_8

    .line 1204
    iget-object v1, p0, Lcom/tencent/tmselfupdatesdk/m;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    const/16 v2, 0x64

    const/16 v3, -0xf

    const-string v4, "SelfUpdate success, NO Update!"

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(IILjava/lang/String;)V

    goto :goto_2

    .line 1209
    :cond_8
    new-instance v1, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;

    const-string v8, ""

    const-string v9, ""

    const-string v11, ""

    move v2, v3

    move-wide v6, v4

    move v10, v3

    move v12, v3

    invoke-direct/range {v1 .. v12}, Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;-><init>(IIJJLjava/lang/String;Ljava/lang/String;BLjava/lang/String;I)V

    .line 1211
    iget-object v2, p0, Lcom/tencent/tmselfupdatesdk/m;->a:Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;

    invoke-static {v2, v1}, Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;->a(Lcom/tencent/tmselfupdatesdk/TMSelfUpdateManager;Lcom/tencent/tmselfupdatesdk/model/TMSelfUpdateUpdateInfo;)V

    goto/16 :goto_2

    :cond_9
    move v4, v3

    goto :goto_3
.end method
