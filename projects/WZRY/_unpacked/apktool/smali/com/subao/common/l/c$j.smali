.class Lcom/subao/common/l/c$j;
.super Lcom/subao/common/l/c$l;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# instance fields
.field private final c:I

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/subao/common/l/c$e;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 934
    invoke-direct {p0, p1, p2}, Lcom/subao/common/l/c$l;-><init>(Lcom/subao/common/l/c$e;Ljava/lang/String;)V

    .line 935
    iput p3, p0, Lcom/subao/common/l/c$j;->c:I

    .line 936
    return-void
.end method


# virtual methods
.method a()Lcom/subao/common/l/c$a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 941
    sget-object v0, Lcom/subao/common/l/c$a;->c:Lcom/subao/common/l/c$a;

    return-object v0
.end method

.method protected a(ILjava/lang/Exception;[B)Lcom/subao/common/l/c$c;
    .locals 7

    .prologue
    .line 985
    invoke-virtual {p0, p1, p2, p3}, Lcom/subao/common/l/c$j;->b(ILjava/lang/Exception;[B)Lcom/subao/common/l/a;

    move-result-object v2

    .line 986
    new-instance v0, Lcom/subao/common/l/c$c;

    iget-object v1, p0, Lcom/subao/common/l/c$j;->a:Lcom/subao/common/l/c$e;

    iget v1, v1, Lcom/subao/common/l/c$e;->a:I

    iget-object v3, p0, Lcom/subao/common/l/c$j;->b:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/subao/common/l/c$j;->c:I

    invoke-virtual {v2}, Lcom/subao/common/l/a;->a()Lcom/subao/common/i/n$a;

    move-result-object v6

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/l/c$c;-><init>(IILjava/lang/String;Ljava/lang/String;ILcom/subao/common/i/n$a;)V

    return-object v0
.end method

.method a(Lcom/subao/common/j/a$c;)Lcom/subao/common/l/c$c;
    .locals 1

    .prologue
    .line 991
    iget v0, p0, Lcom/subao/common/l/c$j;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/subao/common/l/c$j;->a(Lcom/subao/common/j/a$c;I)Lcom/subao/common/l/c$c;

    move-result-object v0

    return-object v0
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 946
    const/16 v0, 0xc8

    return v0
.end method

.method protected b(Lcom/subao/common/j/a$c;)Lcom/subao/common/l/c$h$b;
    .locals 4

    .prologue
    .line 996
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Lcom/subao/common/j/a$c;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/subao/common/l/g;->a(Ljava/io/InputStream;)Lcom/subao/common/l/g;

    move-result-object v0

    .line 997
    new-instance v1, Lcom/subao/common/l/c$h$b;

    iget v0, v0, Lcom/subao/common/l/g;->a:I

    iget-object v2, p0, Lcom/subao/common/l/c$j;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/subao/common/l/c$h$b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method d()Lcom/subao/common/l/c$h$a;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 965
    invoke-static {}, Lcom/subao/common/l/k;->a()Lcom/subao/common/l/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subao/common/l/k;->d()Lcom/subao/common/l/f;

    move-result-object v1

    .line 966
    if-nez v1, :cond_1

    .line 980
    :cond_0
    :goto_0
    return-object v0

    .line 969
    :cond_1
    invoke-static {v1}, Lcom/subao/common/l/c$m;->a(Lcom/subao/common/l/f;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 973
    invoke-virtual {p0}, Lcom/subao/common/l/c$j;->a()Lcom/subao/common/l/c$a;

    move-result-object v2

    iget-object v1, v1, Lcom/subao/common/l/f;->b:Lcom/subao/common/l/f$a;

    .line 975
    invoke-static {v1}, Lcom/subao/common/l/c$m;->a(Lcom/subao/common/l/f$a;)Lcom/subao/common/e/f$a;

    move-result-object v1

    .line 972
    invoke-static {v2, v0, v1}, Lcom/subao/common/l/c$m;->a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/h;Lcom/subao/common/e/f$a;)Lcom/subao/common/l/c$m$a;

    move-result-object v1

    .line 976
    iget v2, v1, Lcom/subao/common/l/c$m$a;->a:I

    if-eqz v2, :cond_2

    .line 977
    new-instance v0, Lcom/subao/common/l/c$h$a;

    iget v2, v1, Lcom/subao/common/l/c$m$a;->a:I

    iget-object v1, v1, Lcom/subao/common/l/c$m$a;->c:Lcom/subao/common/i/n$a;

    invoke-direct {v0, v2, v1}, Lcom/subao/common/l/c$h$a;-><init>(ILcom/subao/common/i/n$a;)V

    goto :goto_0

    .line 979
    :cond_2
    iget-object v1, v1, Lcom/subao/common/l/c$m$a;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/subao/common/l/c$j;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method e()Lcom/subao/common/j/a$b;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 952
    sget-object v0, Lcom/subao/common/j/a$b;->c:Lcom/subao/common/j/a$b;

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 958
    new-instance v0, Lcom/subao/common/l/e;

    iget v1, p0, Lcom/subao/common/l/c$j;->c:I

    iget-object v2, p0, Lcom/subao/common/l/c$j;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/subao/common/l/e;-><init>(ILjava/lang/String;)V

    .line 959
    invoke-static {v0}, Lcom/subao/common/n/g;->a(Lcom/subao/common/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
