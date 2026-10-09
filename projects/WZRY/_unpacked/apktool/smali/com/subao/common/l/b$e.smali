.class public Lcom/subao/common/l/b$e;
.super Ljava/lang/Object;
.source "QosHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field final a:Lcom/subao/common/l/c$e;

.field private final b:Lcom/subao/common/j/j;

.field private final c:Lcom/subao/common/l/c$d;

.field private final d:I

.field private final e:Lcom/subao/common/l/b$g;

.field private final f:Lcom/subao/common/l/b$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/subao/common/l/c$e;Lcom/subao/common/j/j;Lcom/subao/common/l/c$d;ILcom/subao/common/l/b$g;Lcom/subao/common/l/b$a;)V
    .locals 0
    .param p6    # Lcom/subao/common/l/b$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/subao/common/l/b$e;->a:Lcom/subao/common/l/c$e;

    .line 108
    iput-object p2, p0, Lcom/subao/common/l/b$e;->b:Lcom/subao/common/j/j;

    .line 109
    iput-object p3, p0, Lcom/subao/common/l/b$e;->c:Lcom/subao/common/l/c$d;

    .line 110
    iput p4, p0, Lcom/subao/common/l/b$e;->d:I

    .line 111
    iput-object p6, p0, Lcom/subao/common/l/b$e;->f:Lcom/subao/common/l/b$a;

    .line 112
    iput-object p5, p0, Lcom/subao/common/l/b$e;->e:Lcom/subao/common/l/b$g;

    .line 113
    return-void
.end method

.method private a()Lcom/subao/common/l/c$c;
    .locals 8

    .prologue
    const/16 v7, 0xbbb

    const/16 v2, 0xbb9

    const/4 v3, 0x0

    .line 163
    iget v0, p0, Lcom/subao/common/l/b$e;->d:I

    if-gtz v0, :cond_0

    .line 164
    const-string v0, "SubaoQos"

    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "Bad accel time: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/subao/common/l/b$e;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/16 v2, 0xbba

    .line 166
    new-instance v4, Lcom/subao/common/l/a;

    sget-object v0, Lcom/subao/common/l/c$a;->a:Lcom/subao/common/l/c$a;

    invoke-direct {v4, v0, v2}, Lcom/subao/common/l/a;-><init>(Lcom/subao/common/l/c$a;I)V

    .line 167
    iget v0, p0, Lcom/subao/common/l/b$e;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/subao/common/l/a;->a([B)V

    .line 168
    new-instance v0, Lcom/subao/common/l/c$c;

    iget-object v1, p0, Lcom/subao/common/l/b$e;->a:Lcom/subao/common/l/c$e;

    iget v1, v1, Lcom/subao/common/l/c$e;->a:I

    iget v5, p0, Lcom/subao/common/l/b$e;->d:I

    invoke-virtual {v4}, Lcom/subao/common/l/a;->a()Lcom/subao/common/i/n$a;

    move-result-object v6

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/l/c$c;-><init>(IILjava/lang/String;Ljava/lang/String;ILcom/subao/common/i/n$a;)V

    .line 208
    :goto_0
    return-object v0

    .line 170
    :cond_0
    const-string v0, "SubaoQos"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/subao/common/l/b$e;->b:Lcom/subao/common/j/j;

    if-eqz v1, :cond_4

    .line 174
    iget-object v1, p0, Lcom/subao/common/l/b$e;->b:Lcom/subao/common/j/j;

    invoke-interface {v1}, Lcom/subao/common/j/j;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    if-eqz v0, :cond_1

    .line 176
    const-string v0, "SubaoQos"

    const-string v1, "Network disconnected when Qos open attempt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_1
    const/16 v2, 0xbb8

    .line 179
    new-instance v4, Lcom/subao/common/l/a;

    sget-object v0, Lcom/subao/common/l/c$a;->a:Lcom/subao/common/l/c$a;

    invoke-direct {v4, v0, v2}, Lcom/subao/common/l/a;-><init>(Lcom/subao/common/l/c$a;I)V

    .line 180
    new-instance v0, Lcom/subao/common/l/c$c;

    iget-object v1, p0, Lcom/subao/common/l/b$e;->a:Lcom/subao/common/l/c$e;

    iget v1, v1, Lcom/subao/common/l/c$e;->a:I

    iget v5, p0, Lcom/subao/common/l/b$e;->d:I

    invoke-virtual {v4}, Lcom/subao/common/l/a;->a()Lcom/subao/common/i/n$a;

    move-result-object v6

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/l/c$c;-><init>(IILjava/lang/String;Ljava/lang/String;ILcom/subao/common/i/n$a;)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/subao/common/l/b$e;->b:Lcom/subao/common/j/j;

    invoke-interface {v1}, Lcom/subao/common/j/j;->a()Lcom/subao/common/j/j$a;

    move-result-object v1

    .line 183
    sget-object v4, Lcom/subao/common/j/j$a;->f:Lcom/subao/common/j/j$a;

    if-eq v1, v4, :cond_4

    sget-object v4, Lcom/subao/common/j/j$a;->b:Lcom/subao/common/j/j$a;

    if-eq v1, v4, :cond_4

    .line 184
    if-eqz v0, :cond_3

    .line 185
    const-string v0, "SubaoQos"

    const-string v4, "It is not 4G now"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_3
    new-instance v4, Lcom/subao/common/l/a;

    sget-object v0, Lcom/subao/common/l/c$a;->a:Lcom/subao/common/l/c$a;

    invoke-direct {v4, v0, v2}, Lcom/subao/common/l/a;-><init>(Lcom/subao/common/l/c$a;I)V

    .line 189
    iget v0, v1, Lcom/subao/common/j/j$a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/subao/common/l/a;->a([B)V

    .line 190
    new-instance v0, Lcom/subao/common/l/c$c;

    iget-object v1, p0, Lcom/subao/common/l/b$e;->a:Lcom/subao/common/l/c$e;

    iget v1, v1, Lcom/subao/common/l/c$e;->a:I

    iget v5, p0, Lcom/subao/common/l/b$e;->d:I

    invoke-virtual {v4}, Lcom/subao/common/l/a;->a()Lcom/subao/common/i/n$a;

    move-result-object v6

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/l/c$c;-><init>(IILjava/lang/String;Ljava/lang/String;ILcom/subao/common/i/n$a;)V

    goto :goto_0

    .line 194
    :cond_4
    invoke-static {}, Lcom/subao/common/l/k;->a()Lcom/subao/common/l/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subao/common/l/k;->d()Lcom/subao/common/l/f;

    move-result-object v1

    .line 195
    if-nez v1, :cond_5

    .line 197
    new-instance v2, Lcom/subao/common/l/a;

    sget-object v0, Lcom/subao/common/l/c$a;->a:Lcom/subao/common/l/c$a;

    invoke-direct {v2, v0, v7}, Lcom/subao/common/l/a;-><init>(Lcom/subao/common/l/c$a;I)V

    .line 198
    new-instance v0, Lcom/subao/common/l/c$c;

    iget-object v1, p0, Lcom/subao/common/l/b$e;->a:Lcom/subao/common/l/c$e;

    iget v1, v1, Lcom/subao/common/l/c$e;->a:I

    iget v5, p0, Lcom/subao/common/l/b$e;->d:I

    invoke-virtual {v2}, Lcom/subao/common/l/a;->a()Lcom/subao/common/i/n$a;

    move-result-object v6

    move v2, v7

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/l/c$c;-><init>(IILjava/lang/String;Ljava/lang/String;ILcom/subao/common/i/n$a;)V

    goto/16 :goto_0

    .line 201
    :cond_5
    iget-object v2, p0, Lcom/subao/common/l/b$e;->e:Lcom/subao/common/l/b$g;

    invoke-interface {v2}, Lcom/subao/common/l/b$g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/subao/common/l/b$e;->a(Lcom/subao/common/l/f;Ljava/lang/String;)Lcom/subao/common/l/c$h;

    move-result-object v1

    .line 203
    if-eqz v0, :cond_6

    .line 204
    const-string v0, "SubaoQos"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Open request created: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_6
    invoke-static {}, Lcom/subao/common/l/c;->a()Lcom/subao/common/l/c;

    move-result-object v0

    iget-object v2, p0, Lcom/subao/common/l/b$e;->a:Lcom/subao/common/l/c$e;

    iget-object v2, v2, Lcom/subao/common/l/c$e;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/subao/common/l/b$e;->a:Lcom/subao/common/l/c$e;

    iget v4, v4, Lcom/subao/common/l/c$e;->c:I

    new-instance v5, Lcom/subao/common/l/b$b;

    iget-object v6, p0, Lcom/subao/common/l/b$e;->f:Lcom/subao/common/l/b$a;

    invoke-direct {v5, v6}, Lcom/subao/common/l/b$b;-><init>(Lcom/subao/common/l/b$a;)V

    invoke-virtual {v0, v2, v4, v1, v5}, Lcom/subao/common/l/c;->a(Ljava/lang/String;ILcom/subao/common/l/c$h;Lcom/subao/common/l/c$b;)V

    move-object v0, v3

    .line 208
    goto/16 :goto_0
.end method


# virtual methods
.method a(Lcom/subao/common/l/f;Ljava/lang/String;)Lcom/subao/common/l/c$h;
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-object v0, p0, Lcom/subao/common/l/b$e;->c:Lcom/subao/common/l/c$d;

    iget-object v0, v0, Lcom/subao/common/l/c$d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/subao/common/l/b$e;->e:Lcom/subao/common/l/b$g;

    invoke-static {v0}, Lcom/subao/common/l/b;->a(Lcom/subao/common/j/k$a;)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "SubaoQos"

    const-string v2, "Cannot getConfigString private IP"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    :goto_0
    new-instance v0, Lcom/subao/common/l/j;

    iget-object v2, p0, Lcom/subao/common/l/b$e;->c:Lcom/subao/common/l/c$d;

    iget v2, v2, Lcom/subao/common/l/c$d;->b:I

    move-object v4, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/subao/common/l/j;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v2, Lcom/subao/common/l/d;

    iget-object v3, p0, Lcom/subao/common/l/b$e;->c:Lcom/subao/common/l/c$d;

    iget v4, v3, Lcom/subao/common/l/c$d;->b:I

    iget-object v3, p0, Lcom/subao/common/l/b$e;->c:Lcom/subao/common/l/c$d;

    iget-object v5, v3, Lcom/subao/common/l/c$d;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/common/l/b$e;->c:Lcom/subao/common/l/c$d;

    iget v6, v3, Lcom/subao/common/l/c$d;->d:I

    iget-object v3, p0, Lcom/subao/common/l/b$e;->c:Lcom/subao/common/l/c$d;

    iget-object v3, v3, Lcom/subao/common/l/c$d;->e:Lcom/subao/common/j/l;

    iget-object v7, v3, Lcom/subao/common/j/l;->d:Ljava/lang/String;

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/subao/common/l/d;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 156
    new-instance v3, Lcom/subao/common/l/h;

    iget-object v1, p0, Lcom/subao/common/l/b$e;->e:Lcom/subao/common/l/b$g;

    .line 157
    invoke-interface {v1}, Lcom/subao/common/l/b$g;->a()Lcom/subao/common/e/g;

    move-result-object v4

    iget-object v1, p0, Lcom/subao/common/l/b$e;->e:Lcom/subao/common/l/b$g;

    invoke-interface {v1}, Lcom/subao/common/l/b$g;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/subao/common/l/b$e;->e:Lcom/subao/common/l/b$g;

    invoke-interface {v1}, Lcom/subao/common/l/b$g;->c()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/subao/common/l/b$e;->e:Lcom/subao/common/l/b$g;

    invoke-interface {v1}, Lcom/subao/common/l/b$g;->d()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/subao/common/l/b$e;->d:I

    move-object v9, v0

    move-object v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/subao/common/l/h;-><init>(Lcom/subao/common/e/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/subao/common/l/j;Lcom/subao/common/l/d;)V

    .line 159
    new-instance v0, Lcom/subao/common/l/c$k;

    iget-object v1, p0, Lcom/subao/common/l/b$e;->a:Lcom/subao/common/l/c$e;

    invoke-direct {v0, v1, p1, v3}, Lcom/subao/common/l/c$k;-><init>(Lcom/subao/common/l/c$e;Lcom/subao/common/l/f;Lcom/subao/common/l/h;)V

    return-object v0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/subao/common/l/b$e;->c:Lcom/subao/common/l/c$d;

    iget-object v1, v0, Lcom/subao/common/l/c$d;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/subao/common/l/b$e;->a()Lcom/subao/common/l/c$c;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/subao/common/l/b$e;->f:Lcom/subao/common/l/b$a;

    sget-object v2, Lcom/subao/common/l/c$a;->a:Lcom/subao/common/l/c$a;

    invoke-interface {v1, v2, v0}, Lcom/subao/common/l/b$a;->a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/c$c;)V

    .line 121
    :cond_0
    return-void
.end method
