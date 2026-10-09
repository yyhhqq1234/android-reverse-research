.class abstract Lcom/subao/common/l/c$h;
.super Ljava/lang/Object;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/l/c$h$b;,
        Lcom/subao/common/l/c$h$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/subao/common/l/c$e;


# direct methods
.method constructor <init>(Lcom/subao/common/l/c$e;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/subao/common/l/c$h;->a:Lcom/subao/common/l/c$e;

    .line 172
    return-void
.end method


# virtual methods
.method abstract a()Lcom/subao/common/l/c$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract a(ILjava/lang/Exception;[B)Lcom/subao/common/l/c$c;
.end method

.method abstract a(Lcom/subao/common/j/a$c;)Lcom/subao/common/l/c$c;
.end method

.method final a(Lcom/subao/common/j/a$c;I)Lcom/subao/common/l/c$c;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 218
    const-string v0, "SubaoQos"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    .line 221
    iget-object v0, p1, Lcom/subao/common/j/a$c;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/subao/common/j/a$c;->b:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/subao/common/j/a$c;->a:I

    const/16 v2, 0x193

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/subao/common/j/a$c;->a:I

    const/16 v2, 0x1f6

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/subao/common/j/a$c;->a:I

    .line 222
    invoke-virtual {p0}, Lcom/subao/common/l/c$h;->b()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 224
    :cond_0
    const-string v0, "SubaoQos"

    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "QosManager return code is %d, response is empty"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Lcom/subao/common/j/a$c;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget v0, p1, Lcom/subao/common/j/a$c;->a:I

    add-int/lit16 v0, v0, 0x1388

    iget-object v1, p1, Lcom/subao/common/j/a$c;->b:[B

    invoke-virtual {p0, v0, v5, v1}, Lcom/subao/common/l/c$h;->a(ILjava/lang/Exception;[B)Lcom/subao/common/l/c$c;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    .line 230
    :cond_1
    iget v0, p1, Lcom/subao/common/j/a$c;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 238
    const/16 v0, 0x2710

    .line 245
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/subao/common/l/c$h;->b(Lcom/subao/common/j/a$c;)Lcom/subao/common/l/c$h$b;

    move-result-object v4

    .line 246
    iget v2, v4, Lcom/subao/common/l/c$h$b;->a:I

    if-eqz v2, :cond_3

    .line 247
    if-eqz v1, :cond_2

    .line 248
    const-string v1, "SubaoQos"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QosManager response body-result-code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v4, Lcom/subao/common/l/c$h$b;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_2
    iget v1, v4, Lcom/subao/common/l/c$h$b;->a:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/subao/common/j/a$c;->b:[B

    invoke-virtual {p0, v0, v1, v2}, Lcom/subao/common/l/c$h;->a(ILjava/lang/Exception;[B)Lcom/subao/common/l/c$c;

    move-result-object v0

    goto :goto_0

    .line 232
    :sswitch_0
    const/16 v0, 0x4e20

    .line 233
    goto :goto_1

    .line 235
    :sswitch_1
    const/16 v0, 0x7530

    .line 236
    goto :goto_1

    .line 252
    :cond_3
    iget-object v0, v4, Lcom/subao/common/l/c$h$b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    const-string v0, "SubaoQos"

    const-string v1, "Parse SessionId from QosManager response is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/16 v0, 0x138b

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/subao/common/j/a$c;->b:[B

    invoke-virtual {p0, v0, v1, v2}, Lcom/subao/common/l/c$h;->a(ILjava/lang/Exception;[B)Lcom/subao/common/l/c$c;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_4
    new-instance v0, Lcom/subao/common/l/c$c;

    iget-object v1, p0, Lcom/subao/common/l/c$h;->a:Lcom/subao/common/l/c$e;

    iget v1, v1, Lcom/subao/common/l/c$e;->a:I

    const/4 v2, 0x0

    iget-object v3, v4, Lcom/subao/common/l/c$h$b;->b:Ljava/lang/String;

    iget-object v4, v4, Lcom/subao/common/l/c$h$b;->c:Ljava/lang/String;

    const/4 v6, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/l/c$c;-><init>(IILjava/lang/String;Ljava/lang/String;ILcom/subao/common/i/n$a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 260
    :goto_2
    const-string v1, "SubaoQos"

    const-string v2, "QosManager response parse error"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/16 v1, 0x138a

    iget-object v2, p1, Lcom/subao/common/j/a$c;->b:[B

    invoke-virtual {p0, v1, v0, v2}, Lcom/subao/common/l/c$h;->a(ILjava/lang/Exception;[B)Lcom/subao/common/l/c$c;

    move-result-object v0

    goto :goto_0

    .line 257
    :catch_1
    move-exception v0

    goto :goto_2

    .line 230
    nop

    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_0
        0x1f6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected abstract b()I
.end method

.method final b(ILjava/lang/Exception;[B)Lcom/subao/common/l/a;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Lcom/subao/common/l/a;

    invoke-virtual {p0}, Lcom/subao/common/l/c$h;->a()Lcom/subao/common/l/c$a;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/subao/common/l/a;-><init>(Lcom/subao/common/l/c$a;I)V

    .line 212
    invoke-virtual {v0, p2}, Lcom/subao/common/l/a;->a(Ljava/lang/Exception;)V

    .line 213
    invoke-virtual {v0, p3}, Lcom/subao/common/l/a;->a([B)V

    .line 214
    return-object v0
.end method

.method protected abstract b(Lcom/subao/common/j/a$c;)Lcom/subao/common/l/c$h$b;
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const-string v0, "/api/app/v2/qos/"

    return-object v0
.end method

.method abstract d()Lcom/subao/common/l/c$h$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method abstract e()Lcom/subao/common/j/a$b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method abstract f()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method
