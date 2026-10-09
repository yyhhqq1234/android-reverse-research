.class public Lcom/xingin/xhssharesdk/XhsSdkInject;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static checkTokenRequestPath:Ljava/lang/String; = "https://edith.xiaohongshu.com/api/sns/v1/ext/share/token"

.field private static debugTracker:Z = false

.field private static shareNoteMaxXhsVersionName:Ljava/lang/String; = ""

.field private static shareNoteMinXhsVersionName:Ljava/lang/String; = "7.81.0"

.field private static uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCheckTokenRequestPath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xingin/xhssharesdk/XhsSdkInject;->checkTokenRequestPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getShareNoteMaxXhsVersionName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xingin/xhssharesdk/XhsSdkInject;->shareNoteMaxXhsVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public static getShareNoteMinXhsVersionName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xingin/xhssharesdk/XhsSdkInject;->shareNoteMinXhsVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public static getUid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xingin/xhssharesdk/XhsSdkInject;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public static isDebugTracker()Z
    .locals 1

    sget-boolean v0, Lcom/xingin/xhssharesdk/XhsSdkInject;->debugTracker:Z

    return v0
.end method
