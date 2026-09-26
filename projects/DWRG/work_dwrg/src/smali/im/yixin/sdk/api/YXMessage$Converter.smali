.class public Lim/yixin/sdk/api/YXMessage$Converter;
.super Ljava/lang/Object;
.source "YXMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/yixin/sdk/api/YXMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Converter"
.end annotation


# static fields
.field private static final DATA_CLASS_KEY:Ljava/lang/String; = "_yixinmessage_dataClass"

.field private static final VERSION_KEY:Ljava/lang/String; = "_yixinmessage_version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroid/os/Bundle;)Lim/yixin/sdk/api/YXMessage;
    .locals 7
    .param p0, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 271
    new-instance v3, Lim/yixin/sdk/api/YXMessage;

    invoke-direct {v3}, Lim/yixin/sdk/api/YXMessage;-><init>()V

    .line 272
    .local v3, "yxMessage":Lim/yixin/sdk/api/YXMessage;
    const-string v4, "_yixinmessage_version"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lim/yixin/sdk/api/YXMessage;->access$1(Lim/yixin/sdk/api/YXMessage;I)V

    .line 273
    const-string v4, "_yixinmessage_title"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x28

    invoke-static {v4, v5, v6}, Lim/yixin/sdk/util/StringUtil;->substringByByteCount(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lim/yixin/sdk/api/YXMessage;->title:Ljava/lang/String;

    .line 274
    const-string v4, "_yixinmessage_description"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 275
    const/16 v5, 0x48

    .line 274
    invoke-static {v4, v5, v6}, Lim/yixin/sdk/util/StringUtil;->substringByByteCount(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    .line 276
    const-string v4, "_yixinmessage_comment"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x129

    invoke-static {v4, v5, v6}, Lim/yixin/sdk/util/StringUtil;->substringByCharCount(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lim/yixin/sdk/api/YXMessage;->comment:Ljava/lang/String;

    .line 278
    const-string v4, "_yixinmessage_thumbdata"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v3, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    .line 280
    const-string v4, "_yixinmessage_dataClass"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 281
    :cond_0
    const-class v4, Lim/yixin/sdk/api/YXMessage;

    const-string v5, " data class is blank"

    invoke-static {v4, v5}, Lim/yixin/sdk/util/SDKLogger;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 292
    :goto_0
    return-object v3

    .line 285
    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 286
    .local v0, "localClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lim/yixin/sdk/api/YXMessage$YXMessageData;

    iput-object v4, v3, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    .line 287
    iget-object v4, v3, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    invoke-interface {v4, p0}, Lim/yixin/sdk/api/YXMessage$YXMessageData;->read(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    .end local v0    # "localClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 290
    .local v1, "localException":Ljava/lang/Exception;
    const-class v4, Lim/yixin/sdk/api/YXMessage;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " data class is not found  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lim/yixin/sdk/util/SDKLogger;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static write(Lim/yixin/sdk/api/YXMessage;)Landroid/os/Bundle;
    .locals 3
    .param p0, "yxMessage"    # Lim/yixin/sdk/api/YXMessage;

    .prologue
    .line 249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v0, "localBundle":Landroid/os/Bundle;
    const-string v1, "_yixinmessage_version"

    invoke-static {p0}, Lim/yixin/sdk/api/YXMessage;->access$0(Lim/yixin/sdk/api/YXMessage;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string v1, "_yixinmessage_title"

    iget-object v2, p0, Lim/yixin/sdk/api/YXMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v1, "_yixinmessage_description"

    iget-object v2, p0, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v1, "_yixinmessage_comment"

    iget-object v2, p0, Lim/yixin/sdk/api/YXMessage;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "_yixinmessage_thumbdata"

    iget-object v2, p0, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 255
    iget-object v1, p0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    if-eqz v1, :cond_0

    .line 256
    const-string v1, "_yixinmessage_dataClass"

    iget-object v2, p0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    invoke-interface {v1, v0}, Lim/yixin/sdk/api/YXMessage$YXMessageData;->write(Landroid/os/Bundle;)V

    .line 259
    :cond_0
    return-object v0
.end method
