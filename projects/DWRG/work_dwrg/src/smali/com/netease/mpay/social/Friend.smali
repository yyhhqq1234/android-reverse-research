.class public Lcom/netease/mpay/social/Friend;
.super Ljava/lang/Object;


# static fields
.field public static final RELATION_BILATERAL:I = 0x2

.field public static final RELATION_FRIEND:I = 0x1

.field public static final RELATION_SELF:I


# instance fields
.field public mAvatarUrl:Ljava/lang/String;

.field public mNickName:Ljava/lang/String;

.field public mRelationType:I

.field public mUid:Ljava/lang/String;

.field public mUserType:I


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

.method protected static a(Lcom/netease/mpay/social/m;)Lcom/netease/mpay/social/Friend;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netease/mpay/social/Friend;

    invoke-direct {v0}, Lcom/netease/mpay/social/Friend;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/social/m;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/social/Friend;->mUid:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, v0, Lcom/netease/mpay/social/Friend;->mUserType:I

    iget-object v1, p0, Lcom/netease/mpay/social/m;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/social/Friend;->mNickName:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/social/m;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/social/Friend;->mAvatarUrl:Ljava/lang/String;

    iget v1, p0, Lcom/netease/mpay/social/m;->b:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/netease/mpay/social/Friend;->mRelationType:I

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x2

    iput v1, v0, Lcom/netease/mpay/social/Friend;->mRelationType:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
