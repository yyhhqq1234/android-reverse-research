.class public Lcom/tencent/mna/b/e/a$a;
.super Ljava/lang/Object;
.source "NetworkQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mna/b/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Ljava/lang/String;

.field public r:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/b/e/a$a;->a:Ljava/lang/String;

    .line 137
    iput v1, p0, Lcom/tencent/mna/b/e/a$a;->b:I

    .line 138
    iput v1, p0, Lcom/tencent/mna/b/e/a$a;->c:I

    .line 139
    iput v1, p0, Lcom/tencent/mna/b/e/a$a;->d:I

    .line 140
    iput v1, p0, Lcom/tencent/mna/b/e/a$a;->e:I

    .line 141
    iput v1, p0, Lcom/tencent/mna/b/e/a$a;->f:I

    .line 142
    iput v1, p0, Lcom/tencent/mna/b/e/a$a;->g:I

    .line 143
    iput v1, p0, Lcom/tencent/mna/b/e/a$a;->h:I

    .line 144
    iput v1, p0, Lcom/tencent/mna/b/e/a$a;->i:I

    .line 145
    iput v1, p0, Lcom/tencent/mna/b/e/a$a;->j:I

    .line 146
    iput v1, p0, Lcom/tencent/mna/b/e/a$a;->k:I

    .line 147
    iput v1, p0, Lcom/tencent/mna/b/e/a$a;->l:I

    .line 148
    iput v1, p0, Lcom/tencent/mna/b/e/a$a;->m:I

    .line 149
    iput v1, p0, Lcom/tencent/mna/b/e/a$a;->n:I

    .line 150
    iput v1, p0, Lcom/tencent/mna/b/e/a$a;->o:I

    .line 151
    iput v1, p0, Lcom/tencent/mna/b/e/a$a;->p:I

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mna/b/e/a$a;->q:Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mna/b/e/a$a;->r:I

    return-void
.end method

.method public static a(I)I
    .locals 1

    .prologue
    .line 156
    if-nez p0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 161
    :goto_0
    return v0

    .line 158
    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 159
    const/4 v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
