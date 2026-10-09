.class public Lcom/subao/common/b/d;
.super Ljava/lang/Object;
.source "AuthResultReceiverImpl.java"

# interfaces
.implements Lcom/subao/common/b/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/b/d$a;,
        Lcom/subao/common/b/d$c;,
        Lcom/subao/common/b/d$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/subao/common/b/d$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Lcom/subao/common/g/c;

.field private final d:Lcom/subao/common/e/u$a;

.field private final e:Lcom/subao/common/e/al;

.field private final f:Lcom/subao/common/b/q;

.field private final g:Lcom/subao/common/b/d$c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/subao/common/b/d$a;Ljava/lang/String;Lcom/subao/common/g/c;Lcom/subao/common/e/u$a;Lcom/subao/common/e/al;Lcom/subao/common/b/q;Lcom/subao/common/b/d$c;)V
    .locals 0
    .param p1    # Lcom/subao/common/b/d$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/subao/common/b/d$c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/subao/common/b/d;->a:Lcom/subao/common/b/d$a;

    .line 61
    iput-object p2, p0, Lcom/subao/common/b/d;->b:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/subao/common/b/d;->c:Lcom/subao/common/g/c;

    .line 63
    iput-object p4, p0, Lcom/subao/common/b/d;->d:Lcom/subao/common/e/u$a;

    .line 64
    iput-object p5, p0, Lcom/subao/common/b/d;->e:Lcom/subao/common/e/al;

    .line 65
    iput-object p6, p0, Lcom/subao/common/b/d;->f:Lcom/subao/common/b/q;

    .line 66
    iput-object p7, p0, Lcom/subao/common/b/d;->g:Lcom/subao/common/b/d$c;

    .line 67
    return-void
.end method

.method static a(ZI)I
    .locals 1

    .prologue
    const/16 v0, 0x3f0

    .line 105
    if-eqz p0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 118
    :goto_0
    :sswitch_0
    return v0

    .line 108
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 112
    :sswitch_1
    const/16 v0, 0x3ee

    goto :goto_0

    .line 110
    :sswitch_2
    const/16 v0, 0x3ed

    goto :goto_0

    .line 116
    :sswitch_3
    const/16 v0, 0x3f1

    goto :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_2
        0x191 -> :sswitch_3
    .end sparse-switch
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/subao/common/b/d;->a:Lcom/subao/common/b/d$a;

    invoke-interface {v0}, Lcom/subao/common/b/d$a;->f()Lcom/subao/common/intf/UserStateListener;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0, p1, p2}, Lcom/subao/common/intf/UserStateListener;->onUserStateUpdate(ILjava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 131
    const-string v0, "3F14CB7C-6B1E-4E05-ACF8-57F11ED1A81C"

    iget-object v1, p0, Lcom/subao/common/b/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EBE43518-4093-4502-9763-0E5E6151C925"

    iget-object v1, p0, Lcom/subao/common/b/d;->b:Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    invoke-static {p1}, Lcom/subao/common/b/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/subao/common/b/d;->c:Lcom/subao/common/g/c;

    const/4 v2, 0x0

    const-string v3, "key_set_user_id"

    invoke-virtual {v1, v2, v3, v0}, Lcom/subao/common/g/c;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_1
    return-void
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    invoke-static {p0}, Lcom/subao/common/n/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_0

    .line 145
    :try_start_0
    new-instance v2, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v2}, Lcom/subao/common/b/f;->a(Landroid/util/JsonReader;)Lcom/subao/common/b/f;

    move-result-object v1

    .line 146
    iget-object v1, v1, Lcom/subao/common/b/f;->a:Lcom/subao/common/b/f$a;

    .line 147
    if-eqz v1, :cond_0

    .line 148
    iget-object v0, v1, Lcom/subao/common/b/f$a;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    return-object v0

    .line 150
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 74
    invoke-static {p1}, Lcom/subao/common/b/d;->a(I)Z

    move-result v0

    iget-object v1, p0, Lcom/subao/common/b/d;->e:Lcom/subao/common/e/al;

    invoke-static {v0, v1}, Lcom/subao/common/j/d;->a(ZLcom/subao/common/e/al;)V

    .line 75
    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;ILjava/lang/String;ZI)V
    .locals 7

    .prologue
    .line 158
    invoke-direct {p0, p4}, Lcom/subao/common/b/d;->b(I)V

    .line 159
    iget-object v0, p0, Lcom/subao/common/b/d;->c:Lcom/subao/common/g/c;

    move v1, p1

    move v2, p6

    move v3, p7

    move v4, p4

    move-object v5, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/subao/common/g/c;->a(IZIILjava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/subao/common/b/d;->f:Lcom/subao/common/b/q;

    .line 162
    invoke-static {p6, p7}, Lcom/subao/common/b/d;->a(ZI)I

    move-result v1

    .line 160
    invoke-virtual {v0, p2, v1, p4, p5}, Lcom/subao/common/b/q;->a(IIILjava/lang/String;)V

    .line 165
    invoke-direct {p0, p4, p5}, Lcom/subao/common/b/d;->a(ILjava/lang/String;)V

    .line 166
    return-void
.end method

.method public a(IILjava/lang/String;JLjava/lang/String;ILjava/lang/String;ZILjava/lang/String;JIJIILjava/lang/String;)V
    .locals 22

    .prologue
    .line 83
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/subao/common/b/d;->g:Lcom/subao/common/b/d$c;

    if-eqz v4, :cond_0

    .line 84
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/subao/common/b/d;->g:Lcom/subao/common/b/d$c;

    move-wide/from16 v0, p12

    invoke-interface {v4, v0, v1}, Lcom/subao/common/b/d$c;->a(J)V

    .line 89
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/subao/common/b/d;->b(I)V

    .line 90
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/subao/common/b/d;->c:Lcom/subao/common/g/c;

    move-wide/from16 v0, p4

    long-to-int v10, v0

    move/from16 v6, p1

    move/from16 v7, p9

    move/from16 v8, p10

    move-object/from16 v9, p3

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p11

    move/from16 v15, p14

    move-wide/from16 v16, p15

    move/from16 v18, p17

    move/from16 v19, p18

    move-object/from16 v20, p19

    invoke-virtual/range {v5 .. v20}, Lcom/subao/common/g/c;->a(IZILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IJIILjava/lang/String;)V

    .line 93
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/subao/common/b/d;->a(Ljava/lang/String;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/subao/common/b/d;->f:Lcom/subao/common/b/q;

    .line 98
    invoke-static/range {p9 .. p10}, Lcom/subao/common/b/d;->a(ZI)I

    move-result v5

    .line 96
    move/from16 v0, p2

    move/from16 v1, p7

    move-object/from16 v2, p8

    invoke-virtual {v4, v0, v5, v1, v2}, Lcom/subao/common/b/q;->a(IIILjava/lang/String;)V

    .line 101
    move-object/from16 v0, p0

    move/from16 v1, p7

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/subao/common/b/d;->a(ILjava/lang/String;)V

    .line 102
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/subao/common/b/b$b;IZ)V
    .locals 3

    .prologue
    .line 175
    iget-object v1, p0, Lcom/subao/common/b/d;->c:Lcom/subao/common/g/c;

    if-nez p4, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, p1, p6, p5, v0}, Lcom/subao/common/g/c;->a(IZILjava/lang/String;)V

    .line 176
    if-eqz p6, :cond_1

    if-eqz p4, :cond_1

    iget-object v0, p4, Lcom/subao/common/b/b$b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    const-string v0, "SubaoData"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "SubaoData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has customer script need download, script-id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Lcom/subao/common/b/b$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/subao/common/b/d;->d:Lcom/subao/common/e/u$a;

    iget-object v1, p0, Lcom/subao/common/b/d;->c:Lcom/subao/common/g/c;

    invoke-static {v0, v1, p2, p3}, Lcom/subao/common/b/d$b;->a(Lcom/subao/common/e/u$a;Lcom/subao/common/g/c;Ljava/lang/String;Ljava/lang/String;)Z

    .line 183
    :cond_1
    return-void

    .line 175
    :cond_2
    iget-object v0, p4, Lcom/subao/common/b/b$b;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(ILjava/lang/String;[BIZI)V
    .locals 7

    .prologue
    .line 170
    iget-object v0, p0, Lcom/subao/common/b/d;->c:Lcom/subao/common/g/c;

    move v1, p1

    move v2, p5

    move v3, p6

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/subao/common/g/c;->a(IZILjava/lang/String;[BI)V

    .line 171
    return-void
.end method
