.class Lcom/subao/common/a/c$k;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Lcom/subao/common/j/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lcom/subao/common/a/c;


# direct methods
.method private constructor <init>(Lcom/subao/common/a/c;)V
    .locals 0

    .prologue
    .line 1997
    iput-object p1, p0, Lcom/subao/common/a/c$k;->a:Lcom/subao/common/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/subao/common/a/c;Lcom/subao/common/a/c$1;)V
    .locals 0

    .prologue
    .line 1997
    invoke-direct {p0, p1}, Lcom/subao/common/a/c$k;-><init>(Lcom/subao/common/a/c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/subao/common/j/j$a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2015
    sget-object v0, Lcom/subao/common/j/j$a;->b:Lcom/subao/common/j/j$a;

    if-ne p1, v0, :cond_0

    .line 2016
    sget-object p1, Lcom/subao/common/j/j$a;->f:Lcom/subao/common/j/j$a;

    .line 2019
    :cond_0
    invoke-static {}, Lcom/subao/common/j/d;->a()V

    .line 2021
    iget-object v0, p0, Lcom/subao/common/a/c$k;->a:Lcom/subao/common/a/c;

    invoke-static {v0}, Lcom/subao/common/a/c;->a(Lcom/subao/common/a/c;)Lcom/subao/common/g/c;

    move-result-object v0

    const-string v1, "key_net_state"

    iget v2, p1, Lcom/subao/common/j/j$a;->g:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/subao/common/g/c;->a(ILjava/lang/String;I)V

    .line 2022
    sget-object v0, Lcom/subao/common/a/c$2;->b:[I

    invoke-virtual {p1}, Lcom/subao/common/j/j$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2031
    :cond_1
    :goto_0
    sget-object v0, Lcom/subao/common/j/j$a;->f:Lcom/subao/common/j/j$a;

    if-ne p1, v0, :cond_3

    .line 2032
    invoke-static {}, Lcom/subao/common/l/k;->a()Lcom/subao/common/l/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subao/common/l/k;->f()V

    .line 2037
    :goto_1
    iget-object v0, p0, Lcom/subao/common/a/c$k;->a:Lcom/subao/common/a/c;

    invoke-static {v0}, Lcom/subao/common/a/c;->d(Lcom/subao/common/a/c;)Lcom/subao/common/a/c$f;

    move-result-object v0

    .line 2038
    if-eqz v0, :cond_2

    .line 2039
    invoke-virtual {v0, p1}, Lcom/subao/common/a/c$f;->b(Lcom/subao/common/j/j$a;)V

    .line 2041
    :cond_2
    return-void

    .line 2025
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/subao/common/j/k;->b(Lcom/subao/common/j/k$a;)[B

    move-result-object v0

    .line 2026
    if-eqz v0, :cond_1

    .line 2027
    iget-object v1, p0, Lcom/subao/common/a/c$k;->a:Lcom/subao/common/a/c;

    invoke-static {v1}, Lcom/subao/common/a/c;->a(Lcom/subao/common/a/c;)Lcom/subao/common/g/c;

    move-result-object v1

    const-string v2, "key_mobile_private_ip"

    invoke-static {v0}, Lcom/subao/common/j/e;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v2, v0}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2034
    :cond_3
    invoke-static {}, Lcom/subao/common/l/k;->a()Lcom/subao/common/l/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subao/common/l/k;->e()V

    goto :goto_1

    .line 2022
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
