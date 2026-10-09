.class public Lcom/tencent/component/plugin/server/PluginValidator$ValidateSignatureException;
.super Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;
.source "PluginValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/server/PluginValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValidateSignatureException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginValidator$ValidateException;-><init>(Ljava/lang/String;)V

    .line 248
    return-void
.end method
