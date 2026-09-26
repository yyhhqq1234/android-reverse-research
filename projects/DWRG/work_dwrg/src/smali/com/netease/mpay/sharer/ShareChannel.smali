.class public Lcom/netease/mpay/sharer/ShareChannel;
.super Ljava/lang/Object;


# static fields
.field public static final SHARE_TYPE_QQ:I = 0x69

.field public static final SHARE_TYPE_QZONE:I = 0x6a

.field public static final SHARE_TYPE_WEIBO:I = 0x64

.field public static final SHARE_TYPE_WEIXIN_FRIEND:I = 0x65

.field public static final SHARE_TYPE_WEIXIN_TIMELINE:I = 0x66

.field public static final SHARE_TYPE_YIXIN_FRIEND:I = 0x67

.field public static final SHARE_TYPE_YIXIN_TIMELINE:I = 0x68


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
