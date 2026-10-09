.class public Lcom/tencent/tmapkupdatesdk/internal/a/d;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Lcom/tencent/tmapkupdatesdk/internal/a/c;Ljava/io/DataOutputStream;)V
    .locals 1

    .prologue
    .line 11
    const v0, 0x504b0708

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 12
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->g:I

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 13
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->h:I

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 14
    iget v0, p0, Lcom/tencent/tmapkupdatesdk/internal/a/c;->i:I

    invoke-static {v0}, Lcom/tencent/tmapkupdatesdk/internal/a/b;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 15
    return-void
.end method
