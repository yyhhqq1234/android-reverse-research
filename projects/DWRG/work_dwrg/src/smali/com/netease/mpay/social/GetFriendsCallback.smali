.class public interface abstract Lcom/netease/mpay/social/GetFriendsCallback;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_DISABLED:I = 0x0

.field public static final ERROR_DUPLICATED_QUERY:I = 0x4

.field public static final ERROR_NETWORK:I = 0x2

.field public static final ERROR_UNKNOWN:I = 0x64

.field public static final ERROR_USER_INVALID:I = 0x3

.field public static final ERROR_WEIBO:I = 0x1


# virtual methods
.method public abstract onFailed(I)V
.end method

.method public abstract onSuccessed([Lcom/netease/mpay/social/Friend;)V
.end method
