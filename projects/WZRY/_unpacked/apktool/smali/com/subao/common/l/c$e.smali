.class public Lcom/subao/common/l/c$e;
.super Ljava/lang/Object;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field final d:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p1, p0, Lcom/subao/common/l/c$e;->a:I

    .line 139
    iput-object p2, p0, Lcom/subao/common/l/c$e;->b:Ljava/lang/String;

    .line 140
    iput p3, p0, Lcom/subao/common/l/c$e;->c:I

    .line 141
    iput-object p4, p0, Lcom/subao/common/l/c$e;->d:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    const/16 v0, 0x756c

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/subao/common/l/c$e;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 135
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    if-nez p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v1

    .line 149
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    .line 150
    goto :goto_0

    .line 152
    :cond_2
    instance-of v2, p1, Lcom/subao/common/l/c$e;

    if-eqz v2, :cond_0

    .line 155
    check-cast p1, Lcom/subao/common/l/c$e;

    .line 156
    iget v2, p0, Lcom/subao/common/l/c$e;->a:I

    iget v3, p1, Lcom/subao/common/l/c$e;->a:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/subao/common/l/c$e;->c:I

    iget v3, p1, Lcom/subao/common/l/c$e;->c:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/subao/common/l/c$e;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/l/c$e;->b:Ljava/lang/String;

    .line 158
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/subao/common/l/c$e;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/l/c$e;->d:Ljava/lang/String;

    .line 159
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
