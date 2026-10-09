.class Lcom/subao/common/i/p$a;
.super Ljava/lang/Object;
.source "Message_Link.java"

# interfaces
.implements Lcom/subao/common/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/subao/common/i/p$f;

.field final b:Lcom/subao/common/i/p$g;

.field final c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/subao/common/i/p$f;Lcom/subao/common/i/p$g;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Lcom/subao/common/i/p$a;->a:Lcom/subao/common/i/p$f;

    .line 341
    iput-object p2, p0, Lcom/subao/common/i/p$a;->b:Lcom/subao/common/i/p$g;

    .line 342
    iput-object p3, p0, Lcom/subao/common/i/p$a;->c:Ljava/lang/Integer;

    .line 343
    return-void
.end method


# virtual methods
.method public serialize(Landroid/util/JsonWriter;)V
    .locals 2

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 348
    const-string v0, "qosInfo"

    iget-object v1, p0, Lcom/subao/common/i/p$a;->a:Lcom/subao/common/i/p$f;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/c;)Landroid/util/JsonWriter;

    .line 349
    const-string v0, "multipathInfo"

    iget-object v1, p0, Lcom/subao/common/i/p$a;->b:Lcom/subao/common/i/p$g;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/c;)Landroid/util/JsonWriter;

    .line 350
    const-string v0, "method"

    iget-object v1, p0, Lcom/subao/common/i/p$a;->c:Ljava/lang/Integer;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 351
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 352
    return-void
.end method
