.class public Lcom/subao/common/i/q;
.super Ljava/lang/Object;
.source "Message_Start.java"

# interfaces
.implements Lcom/subao/common/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/i/q$b;,
        Lcom/subao/common/i/q$c;,
        Lcom/subao/common/i/q$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/subao/common/i/k;

.field public final b:J

.field public final c:Lcom/subao/common/i/q$c;

.field public final d:I

.field public final e:I

.field public final f:Lcom/subao/common/i/q$b;

.field public final g:Lcom/subao/common/i/r;

.field public final h:Lcom/subao/common/e/g;


# direct methods
.method public constructor <init>(Lcom/subao/common/i/k;Lcom/subao/common/i/q$c;IILcom/subao/common/i/q$b;Lcom/subao/common/i/r;Lcom/subao/common/e/g;)V
    .locals 4

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/subao/common/i/q;->a:Lcom/subao/common/i/k;

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/subao/common/i/q;->b:J

    .line 110
    iput-object p2, p0, Lcom/subao/common/i/q;->c:Lcom/subao/common/i/q$c;

    .line 111
    iput p3, p0, Lcom/subao/common/i/q;->d:I

    .line 112
    iput p4, p0, Lcom/subao/common/i/q;->e:I

    .line 113
    iput-object p5, p0, Lcom/subao/common/i/q;->f:Lcom/subao/common/i/q$b;

    .line 114
    iput-object p6, p0, Lcom/subao/common/i/q;->g:Lcom/subao/common/i/r;

    .line 115
    iput-object p7, p0, Lcom/subao/common/i/q;->h:Lcom/subao/common/e/g;

    .line 116
    return-void
.end method


# virtual methods
.method public serialize(Landroid/util/JsonWriter;)V
    .locals 4

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 121
    iget-object v0, p0, Lcom/subao/common/i/q;->a:Lcom/subao/common/i/k;

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 123
    iget-object v0, p0, Lcom/subao/common/i/q;->a:Lcom/subao/common/i/k;

    invoke-virtual {v0, p1}, Lcom/subao/common/i/k;->serialize(Landroid/util/JsonWriter;)V

    .line 125
    :cond_0
    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-wide v2, p0, Lcom/subao/common/i/q;->b:J

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 126
    iget-object v0, p0, Lcom/subao/common/i/q;->c:Lcom/subao/common/i/q$c;

    if-eqz v0, :cond_1

    .line 127
    const-string v0, "startType"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 128
    iget-object v0, p0, Lcom/subao/common/i/q;->c:Lcom/subao/common/i/q$c;

    iget v0, v0, Lcom/subao/common/i/q$c;->d:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 130
    :cond_1
    const-string v0, "nodeNum"

    iget v1, p0, Lcom/subao/common/i/q;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Integer;)Landroid/util/JsonWriter;

    .line 131
    const-string v0, "gameNum"

    iget v1, p0, Lcom/subao/common/i/q;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Integer;)Landroid/util/JsonWriter;

    .line 132
    const-string v0, "scriptResult"

    iget-object v1, p0, Lcom/subao/common/i/q;->f:Lcom/subao/common/i/q$b;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/c;)Landroid/util/JsonWriter;

    .line 133
    const-string/jumbo v0, "version"

    iget-object v1, p0, Lcom/subao/common/i/q;->g:Lcom/subao/common/i/r;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/c;)Landroid/util/JsonWriter;

    .line 134
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/subao/common/i/q;->h:Lcom/subao/common/e/g;

    invoke-static {p1, v0, v1}, Lcom/subao/common/i/e;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/i/c;)V

    .line 135
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 136
    return-void
.end method
