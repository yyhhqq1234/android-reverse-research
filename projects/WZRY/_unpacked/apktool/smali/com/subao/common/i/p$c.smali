.class public Lcom/subao/common/i/p$c;
.super Ljava/lang/Object;
.source "Message_Link.java"

# interfaces
.implements Lcom/subao/common/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:I


# direct methods
.method public constructor <init>(FFFFFFI)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcom/subao/common/i/p$c;->a:F

    .line 89
    iput p2, p0, Lcom/subao/common/i/p$c;->b:F

    .line 90
    iput p3, p0, Lcom/subao/common/i/p$c;->c:F

    .line 91
    iput p4, p0, Lcom/subao/common/i/p$c;->d:F

    .line 92
    iput p5, p0, Lcom/subao/common/i/p$c;->e:F

    .line 93
    iput p6, p0, Lcom/subao/common/i/p$c;->f:F

    .line 94
    iput p7, p0, Lcom/subao/common/i/p$c;->g:I

    .line 95
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/text/NumberFormat;Ljava/lang/String;F)Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/16 v1, 0x22

    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    float-to-double v2, p3

    invoke-virtual {p1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2c

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 159
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 160
    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    const-string v2, "delayAvg"

    iget v3, p0, Lcom/subao/common/i/p$c;->a:F

    invoke-static {v0, v1, v2, v3}, Lcom/subao/common/i/p$c;->a(Ljava/lang/StringBuilder;Ljava/text/NumberFormat;Ljava/lang/String;F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    const-string v2, "delaySD"

    iget v3, p0, Lcom/subao/common/i/p$c;->b:F

    invoke-static {v0, v1, v2, v3}, Lcom/subao/common/i/p$c;->a(Ljava/lang/StringBuilder;Ljava/text/NumberFormat;Ljava/lang/String;F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    const-string v2, "lossRatio"

    iget v3, p0, Lcom/subao/common/i/p$c;->c:F

    invoke-static {v0, v1, v2, v3}, Lcom/subao/common/i/p$c;->a(Ljava/lang/StringBuilder;Ljava/text/NumberFormat;Ljava/lang/String;F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    const-string v2, "exPktRatio1"

    iget v3, p0, Lcom/subao/common/i/p$c;->d:F

    invoke-static {v0, v1, v2, v3}, Lcom/subao/common/i/p$c;->a(Ljava/lang/StringBuilder;Ljava/text/NumberFormat;Ljava/lang/String;F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    const-string v2, "exPktRatio2"

    iget v3, p0, Lcom/subao/common/i/p$c;->e:F

    invoke-static {v0, v1, v2, v3}, Lcom/subao/common/i/p$c;->a(Ljava/lang/StringBuilder;Ljava/text/NumberFormat;Ljava/lang/String;F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    const-string v2, "delayAvgRaw"

    iget v3, p0, Lcom/subao/common/i/p$c;->f:F

    invoke-static {v0, v1, v2, v3}, Lcom/subao/common/i/p$c;->a(Ljava/lang/StringBuilder;Ljava/text/NumberFormat;Ljava/lang/String;F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "roundResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/subao/common/i/p$c;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    if-ne p1, p0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 137
    goto :goto_0

    .line 139
    :cond_2
    instance-of v2, p1, Lcom/subao/common/i/p$c;

    if-nez v2, :cond_3

    move v0, v1

    .line 140
    goto :goto_0

    .line 142
    :cond_3
    check-cast p1, Lcom/subao/common/i/p$c;

    .line 143
    iget v2, p0, Lcom/subao/common/i/p$c;->g:I

    iget v3, p1, Lcom/subao/common/i/p$c;->g:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/subao/common/i/p$c;->a:F

    iget v3, p1, Lcom/subao/common/i/p$c;->a:F

    .line 144
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/subao/common/i/p$c;->b:F

    iget v3, p1, Lcom/subao/common/i/p$c;->b:F

    .line 145
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/subao/common/i/p$c;->c:F

    iget v3, p1, Lcom/subao/common/i/p$c;->c:F

    .line 146
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/subao/common/i/p$c;->d:F

    iget v3, p1, Lcom/subao/common/i/p$c;->d:F

    .line 147
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/subao/common/i/p$c;->e:F

    iget v3, p1, Lcom/subao/common/i/p$c;->e:F

    .line 148
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/subao/common/i/p$c;->f:F

    iget v3, p1, Lcom/subao/common/i/p$c;->f:F

    .line 149
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public serialize(Landroid/util/JsonWriter;)V
    .locals 4

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 174
    const-string v0, "delayAvg"

    iget v1, p0, Lcom/subao/common/i/p$c;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 175
    const-string v0, "delaySD"

    iget v1, p0, Lcom/subao/common/i/p$c;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 176
    const-string v0, "lossRatio"

    iget v1, p0, Lcom/subao/common/i/p$c;->c:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 177
    const-string v0, "exPktRatio1"

    iget v1, p0, Lcom/subao/common/i/p$c;->d:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 178
    const-string v0, "exPktRatio2"

    iget v1, p0, Lcom/subao/common/i/p$c;->e:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 179
    const-string v0, "delayAvgRaw"

    iget v1, p0, Lcom/subao/common/i/p$c;->f:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 180
    const-string v0, "roundResult"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/i/p$c;->g:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 181
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 182
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/subao/common/i/p$c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
