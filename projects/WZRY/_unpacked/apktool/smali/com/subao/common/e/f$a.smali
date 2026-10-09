.class public Lcom/subao/common/e/f$a;
.super Ljava/lang/Object;
.source "Address.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final c:Lcom/subao/common/e/f$a;

.field public static final d:Lcom/subao/common/e/f$a;

.field public static final e:Lcom/subao/common/e/f$a;

.field public static final f:Lcom/subao/common/e/f$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 41
    new-instance v0, Lcom/subao/common/e/f$a;

    const-string v1, "portal-xunyou.qingcdn.com"

    invoke-direct {v0, v1, v3}, Lcom/subao/common/e/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subao/common/e/f$a;->c:Lcom/subao/common/e/f$a;

    .line 44
    new-instance v0, Lcom/subao/common/e/f$a;

    const-string v1, "node-ddns.wsds.cn"

    const/16 v2, 0x1f7

    invoke-direct {v0, v1, v2}, Lcom/subao/common/e/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subao/common/e/f$a;->d:Lcom/subao/common/e/f$a;

    .line 47
    new-instance v0, Lcom/subao/common/e/f$a;

    const-string v1, "api.xunyou.mobi"

    invoke-direct {v0, v1, v3}, Lcom/subao/common/e/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subao/common/e/f$a;->e:Lcom/subao/common/e/f$a;

    .line 50
    new-instance v0, Lcom/subao/common/e/f$a;

    const-string v1, "api.xunyou.mobi"

    invoke-direct {v0, v1, v3}, Lcom/subao/common/e/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subao/common/e/f$a;->f:Lcom/subao/common/e/f$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/subao/common/e/f$a;->a:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/subao/common/e/f$a;->b:I

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 22
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v0

    .line 25
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 26
    goto :goto_0

    .line 28
    :cond_2
    instance-of v2, p1, Lcom/subao/common/e/f$a;

    if-nez v2, :cond_3

    move v0, v1

    .line 29
    goto :goto_0

    .line 31
    :cond_3
    check-cast p1, Lcom/subao/common/e/f$a;

    .line 32
    iget v2, p0, Lcom/subao/common/e/f$a;->b:I

    iget v3, p1, Lcom/subao/common/e/f$a;->b:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/subao/common/e/f$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/e/f$a;->a:Ljava/lang/String;

    .line 33
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 38
    sget-object v0, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v1, "[%s:%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/subao/common/e/f$a;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/subao/common/e/f$a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
