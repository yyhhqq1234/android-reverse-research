.class Lcom/subao/common/b/e;
.super Ljava/lang/Object;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/b/e$a;,
        Lcom/subao/common/b/e$c;,
        Lcom/subao/common/b/e$b;
    }
.end annotation


# static fields
.field private static a:Lcom/subao/common/b/e;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/subao/common/e/al;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/subao/common/e/al;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/subao/common/b/e;->c:Lcom/subao/common/e/al;

    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "android"

    :cond_0
    iput-object p2, p0, Lcom/subao/common/b/e;->b:Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lcom/subao/common/b/e;->b()V

    .line 50
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/subao/common/b/e;->a:Lcom/subao/common/b/e;

    iget-object v0, v0, Lcom/subao/common/b/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/subao/common/b/e;->a:Lcom/subao/common/b/e;

    iget-object v1, v1, Lcom/subao/common/b/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/b/e$b;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 137
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/subao/common/b/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/subao/common/b/e;->a:Lcom/subao/common/b/e;

    iget-object v2, v2, Lcom/subao/common/b/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/configs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    sget-object v1, Lcom/subao/common/b/e$b;->b:Lcom/subao/common/b/e$b;

    if-ne p2, v1, :cond_0

    .line 139
    const-string v1, "/userConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    const-string v1, "?clientVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/subao/common/j/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    new-instance v1, Lcom/subao/common/j/m;

    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/subao/common/j/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    return-object v0
.end method

.method public static a(Lcom/subao/common/b/e$c;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/subao/common/b/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/b/e$c;->c:Ljava/lang/String;

    .line 110
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sessions?grant_type=client_credentials&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    invoke-static {p1}, Lcom/subao/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    :try_start_0
    new-instance v1, Lcom/subao/common/intf/UserInfo;

    iget-object v2, p0, Lcom/subao/common/b/e$c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/common/b/e$c;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/subao/common/b/e$c;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/subao/common/intf/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/subao/common/n/g;->b(Lcom/subao/common/c;)[B

    move-result-object v1

    .line 115
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/subao/common/b/e$c;->d:Lcom/subao/common/j/n;

    invoke-static {v2, v3, v0, v1}, Lcom/subao/common/j/c;->a(Ljava/util/List;Lcom/subao/common/j/n;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 119
    invoke-static {}, Lcom/subao/common/m/b;->a()Lcom/subao/common/m/a;

    move-result-object v0

    new-instance v1, Lcom/subao/common/b/e$a;

    iget-object v2, p0, Lcom/subao/common/b/e$c;->d:Lcom/subao/common/j/n;

    invoke-direct {v1, v2, v5}, Lcom/subao/common/b/e$a;-><init>(Lcom/subao/common/j/n;Lcom/subao/common/b/e$1;)V

    invoke-interface {v0, v1}, Lcom/subao/common/m/a;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static a(Lcom/subao/common/e/al;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/subao/common/b/e;

    invoke-direct {v0, p0, p1}, Lcom/subao/common/b/e;-><init>(Lcom/subao/common/e/al;Ljava/lang/String;)V

    sput-object v0, Lcom/subao/common/b/e;->a:Lcom/subao/common/b/e;

    .line 60
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Lcom/subao/common/j/n;)V
    .locals 3

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/subao/common/b/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/subao/common/b/e;->a:Lcom/subao/common/b/e;

    iget-object v1, v1, Lcom/subao/common/b/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/orders"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {p2}, Lcom/subao/common/b/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 185
    :try_start_0
    new-instance v2, Lcom/subao/common/b/i;

    invoke-direct {v2, p0, p1}, Lcom/subao/common/b/i;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/subao/common/n/g;->b(Lcom/subao/common/c;)[B

    move-result-object v2

    .line 186
    invoke-static {v1, p3, v0, v2}, Lcom/subao/common/j/c;->a(Ljava/util/List;Lcom/subao/common/j/n;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/j/n;)V
    .locals 3
    .param p2    # Lcom/subao/common/j/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 93
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":801/api/v1/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/subao/common/b/e;->a:Lcom/subao/common/b/e;

    iget-object v2, v2, Lcom/subao/common/b/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {p1}, Lcom/subao/common/b/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 96
    invoke-static {v1, p2, v0}, Lcom/subao/common/j/c;->a(Ljava/util/List;Lcom/subao/common/j/n;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/j/n;)V
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/subao/common/b/e$b;->a:Lcom/subao/common/b/e$b;

    invoke-static {p1, p2, v0}, Lcom/subao/common/b/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/b/e$b;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {p0}, Lcom/subao/common/b/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 158
    invoke-static {v1, p3, v0}, Lcom/subao/common/j/c;->a(Ljava/util/List;Lcom/subao/common/j/n;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[BLcom/subao/common/j/n;)V
    .locals 2

    .prologue
    .line 171
    const/4 v0, 0x0

    sget-object v1, Lcom/subao/common/b/e$b;->b:Lcom/subao/common/b/e$b;

    invoke-static {p1, v0, v1}, Lcom/subao/common/b/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/b/e$b;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {p0}, Lcom/subao/common/b/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 173
    invoke-static {v1, p3, v0, p2}, Lcom/subao/common/j/c;->a(Ljava/util/List;Lcom/subao/common/j/n;Ljava/lang/String;[B)V

    .line 174
    return-void
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/subao/common/b/e;->a:Lcom/subao/common/b/e;

    iget-boolean v0, v0, Lcom/subao/common/b/e;->e:Z

    if-eq v0, p0, :cond_0

    .line 73
    sget-object v0, Lcom/subao/common/b/e;->a:Lcom/subao/common/b/e;

    iput-boolean p0, v0, Lcom/subao/common/b/e;->e:Z

    .line 74
    sget-object v0, Lcom/subao/common/b/e;->a:Lcom/subao/common/b/e;

    invoke-direct {v0}, Lcom/subao/common/b/e;->b()V

    .line 76
    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x200

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 193
    iget-boolean v0, p0, Lcom/subao/common/b/e;->e:Z

    if-eqz v0, :cond_1

    .line 194
    const-string v0, "http"

    .line 200
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v0, p0, Lcom/subao/common/b/e;->c:Lcom/subao/common/e/al;

    if-nez v0, :cond_3

    .line 202
    const-string v0, "api.xunyou.mobi"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_0
    :goto_1
    const-string v0, "/api/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/b/e;->d:Ljava/lang/String;

    .line 211
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/subao/common/b/e;->c:Lcom/subao/common/e/al;

    if-nez v0, :cond_2

    .line 196
    const-string v0, "https"

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/subao/common/b/e;->c:Lcom/subao/common/e/al;

    iget-object v0, v0, Lcom/subao/common/e/al;->a:Ljava/lang/String;

    goto :goto_0

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/subao/common/b/e;->c:Lcom/subao/common/e/al;

    iget-object v0, v0, Lcom/subao/common/e/al;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v0, p0, Lcom/subao/common/b/e;->c:Lcom/subao/common/e/al;

    iget v0, v0, Lcom/subao/common/e/al;->c:I

    if-lez v0, :cond_0

    .line 206
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/subao/common/b/e;->c:Lcom/subao/common/e/al;

    iget v2, v2, Lcom/subao/common/e/al;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lcom/subao/common/j/n;)V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 129
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/subao/common/b/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/subao/common/b/e;->a:Lcom/subao/common/b/e;

    iget-object v2, v2, Lcom/subao/common/b/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/accounts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {p1}, Lcom/subao/common/b/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 132
    invoke-static {v1, p2, v0}, Lcom/subao/common/j/c;->a(Ljava/util/List;Lcom/subao/common/j/n;Ljava/lang/String;)V

    .line 133
    return-void
.end method
