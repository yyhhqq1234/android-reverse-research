.class public final Lcom/netease/mobile/link/s3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobile/link/relatelogin/RelatedLoginHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkGuideInLogin(Lcom/netease/mobile/link/relatelogin/RelatedLoginCallback;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{\n    \"guide_text\": \"\u5173\u8054\u624b\u673a\u53ef\u63d0\u5347\u8d26\u53f7\u5b89\u5168\u6027\uff0c\u4e0b\u6b21<b>\u53ef\u7528\u8be5\u624b\u673a\u53f7\u767b\u5f55\u672c\u8d26\u53f7</b>\u3002111\u6d4b\u8bd5\u7528\",\n    \"guide_switch_text\": \"\u60a8\u5df2\u5173\u8054\u4ee5\u4e0b\u624b\u673a\u53f7\uff0c\u5f00\u542f\u5173\u8054\u767b\u5f55\u540e<b>\u53ef\u4f7f\u7528\u624b\u673a\u53f7\u767b\u5f55\u8be5\u8d26\u53f7</b>\u3002111\u6d4b\u8bd5\u7528\",\n    \"guide_type\": 0,\n    \"id\": \"id\",\n    \"login_type\": 1,\n    \"skip_time\": 3,\n    \"guide_timestamp\": 333333\n}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/mobile/link/relatelogin/CheckGuideResp;->parse(Lorg/json/JSONObject;)Lcom/netease/mobile/link/relatelogin/CheckGuideResp;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/mobile/link/relatelogin/RelatedLoginCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/netease/mobile/link/d3;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final getUserConfig()Lcom/netease/mobile/link/relatelogin/UserConfig;
    .locals 2

    new-instance v0, Lcom/netease/mobile/link/relatelogin/UserConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/netease/mobile/link/relatelogin/UserConfig;-><init>(ZZZZ)V

    return-object v0
.end method

.method public final openMobileDisabledPage(Ljava/lang/String;Lcom/netease/mobile/link/relatelogin/RelatedLoginCallback;)V
    .locals 0

    const-string p1, "test_face_token"

    invoke-interface {p2, p1}, Lcom/netease/mobile/link/relatelogin/RelatedLoginCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public final syncUserRelatedLoginInfo()V
    .locals 0

    return-void
.end method

.method public final updateRelatedLoginStatus(ZLjava/lang/String;Landroid/app/Activity;Lcom/netease/mobile/link/relatelogin/RelatedLoginCallback;)V
    .locals 0

    new-instance p1, Lcom/netease/mobile/link/relatelogin/UpdateRlStatusResp;

    const/4 p2, -0x1

    invoke-direct {p1, p2}, Lcom/netease/mobile/link/relatelogin/UpdateRlStatusResp;-><init>(I)V

    invoke-interface {p4, p1}, Lcom/netease/mobile/link/relatelogin/RelatedLoginCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
