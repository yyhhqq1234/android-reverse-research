.class public Lcom/tencent/mna/c/e/b;
.super Ljava/lang/Object;
.source "TCallDgnSpeedTester.java"

# interfaces
.implements Lcom/tencent/mna/b/d/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mna/base/jni/f;->a(Z)I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/tencent/mna/a/b;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mna/base/jni/f;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
