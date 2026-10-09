.class public Loicq/wlogin_sdk/quicklogin/a;
.super Ljava/lang/Object;
.source "QuickLogin.java"


# direct methods
.method private static a(Landroid/app/Activity;JJLoicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;)I
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Loicq/wlogin_sdk/quicklogin/QuickLoginWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    const-string v1, "appid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 43
    const-string/jumbo v1, "subappid"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 44
    if-eqz p5, :cond_0

    iget-object v1, p5, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->userAccount:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p5, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->userAccount:Ljava/lang/String;

    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const-string v1, "account"

    iget-object v2, p5, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->userAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v1, "isUserAccountLocked"

    iget-boolean v2, p5, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->isUserAccountLocked:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    :cond_0
    if-eqz p5, :cond_1

    .line 50
    const-string v1, "forceWebLogin"

    iget-boolean v2, p5, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->forceWebLogin:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    :cond_1
    const/16 v1, 0x4b2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/app/Activity;JJLjava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;)I
    .locals 12

    .prologue
    .line 59
    if-eqz p7, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p7

    iget-boolean v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->forceWebLogin:Z

    if-ne v2, v3, :cond_0

    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p7

    .line 60
    invoke-static/range {v3 .. v8}, Loicq/wlogin_sdk/quicklogin/a;->a(Landroid/app/Activity;JJLoicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;)I

    move-result v2

    .line 78
    :goto_0
    return v2

    .line 64
    :cond_0
    :try_start_0
    const-string v5, "com.tencent.mobileqq"

    .line 65
    invoke-static {p0}, Loicq/wlogin_sdk/tools/util;->CheckMayFastLogin(Landroid/content/Context;)Z

    move-result v2

    .line 66
    const/4 v3, 0x1

    if-ne v3, v2, :cond_1

    move-object v3, p0

    move-object v4, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    .line 67
    invoke-static/range {v3 .. v10}, Loicq/wlogin_sdk/quicklogin/a;->a(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;JJLjava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 70
    :cond_1
    const-string v5, "com.tencent.minihd.qq"

    .line 71
    invoke-static {p0}, Loicq/wlogin_sdk/tools/util;->CheckQQMiniHD(Landroid/content/Context;)Z

    move-result v2

    .line 72
    const/4 v3, 0x1

    if-ne v3, v2, :cond_2

    move-object v3, p0

    move-object v4, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    .line 73
    invoke-static/range {v3 .. v10}, Loicq/wlogin_sdk/quicklogin/a;->a(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;JJLjava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_2
    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p7

    .line 76
    invoke-static/range {v3 .. v8}, Loicq/wlogin_sdk/quicklogin/a;->a(Landroid/app/Activity;JJLoicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 77
    :catch_0
    move-exception v2

    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p7

    .line 78
    invoke-static/range {v3 .. v8}, Loicq/wlogin_sdk/quicklogin/a;->a(Landroid/app/Activity;JJLoicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;)I

    move-result v2

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;JJLjava/lang/String;)I
    .locals 7

    .prologue
    .line 19
    invoke-static {p0}, Loicq/wlogin_sdk/tools/util;->get_rsa_pubkey(Landroid/content/Context;)[B

    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 21
    :cond_0
    const-string v0, "30818902818100daaa2a418b271f3dfcf8f0a9120326d47f07618593d8d71d61a4fe987cc47740e491105bf8e68bd479bf51dfe19d3b06e12017df6d87a0f43bb82b57f59bd4220f2a3d8d68904a6ddb51197989e6e82512d8d8fa6c41b755a8ca962595d3e1e1be7ea01677249be4794cd7c6682d611c1bd81f0a16231fb83517515b94d13e5d0203010001"

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B

    move-result-object v0

    .line 24
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 25
    const-string v2, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 27
    const-string v3, "dstSsoVer"

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 28
    const-string v3, "dstAppid"

    invoke-virtual {v2, v3, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 29
    const-string/jumbo v3, "subDstAppid"

    invoke-virtual {v2, v3, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 30
    const-string v3, "dstAppVer"

    invoke-virtual {p7}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 31
    const-string v3, "publickey"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 32
    const-string v0, "key_params"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 33
    const-string v0, "key_action"

    const-string v2, "action_quick_login"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const/16 v0, 0x4b1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 35
    const/4 v0, 0x0

    return v0
.end method
