.class public Lcom/subao/common/b/g;
.super Ljava/lang/Object;
.source "JWTTokenResp.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/subao/common/c;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/subao/common/b/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:I

.field public final h:Lcom/subao/common/b/k;

.field public final i:J

.field public final j:I

.field public final k:J

.field public final l:I

.field public final m:I

.field public final n:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/subao/common/b/g$1;

    invoke-direct {v0}, Lcom/subao/common/b/g$1;-><init>()V

    sput-object v0, Lcom/subao/common/b/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/b/g;->a:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/subao/common/b/g;->b:J

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/b/g;->c:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/subao/common/b/g;->d:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/b/g;->e:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/subao/common/b/g;->f:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/subao/common/b/g;->g:I

    .line 128
    const-class v0, Lcom/subao/common/b/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/subao/common/b/k;

    iput-object v0, p0, Lcom/subao/common/b/g;->h:Lcom/subao/common/b/k;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/subao/common/b/g;->i:J

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/subao/common/b/g;->j:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/subao/common/b/g;->k:J

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/subao/common/b/g;->l:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/subao/common/b/g;->m:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subao/common/b/g;->n:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IJILcom/subao/common/b/k;IJIILjava/lang/String;)V
    .locals 2
    .param p17    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/subao/common/b/g;->a:Ljava/lang/String;

    .line 105
    iput-wide p2, p0, Lcom/subao/common/b/g;->b:J

    .line 106
    iput-object p4, p0, Lcom/subao/common/b/g;->c:Ljava/lang/String;

    .line 107
    iput p5, p0, Lcom/subao/common/b/g;->d:I

    .line 108
    iput-object p6, p0, Lcom/subao/common/b/g;->e:Ljava/lang/String;

    .line 109
    iput p7, p0, Lcom/subao/common/b/g;->f:I

    .line 110
    iput-wide p8, p0, Lcom/subao/common/b/g;->i:J

    .line 111
    iput p10, p0, Lcom/subao/common/b/g;->g:I

    .line 112
    iput-object p11, p0, Lcom/subao/common/b/g;->h:Lcom/subao/common/b/k;

    .line 113
    iput p12, p0, Lcom/subao/common/b/g;->j:I

    .line 114
    iput-wide p13, p0, Lcom/subao/common/b/g;->k:J

    .line 115
    move/from16 v0, p15

    iput v0, p0, Lcom/subao/common/b/g;->l:I

    .line 116
    move/from16 v0, p16

    iput v0, p0, Lcom/subao/common/b/g;->m:I

    .line 117
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/subao/common/b/g;->n:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public static a(Landroid/util/JsonReader;)Lcom/subao/common/b/g;
    .locals 21

    .prologue
    .line 152
    if-nez p0, :cond_0

    .line 153
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 155
    :cond_0
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 156
    const-wide/16 v4, 0x0

    .line 157
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 158
    const-wide/16 v10, 0x0

    .line 159
    const/4 v13, 0x0

    .line 160
    const/4 v14, -0x1

    .line 161
    const-wide/16 v15, 0x0

    .line 162
    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 163
    const-string v19, ""

    .line 165
    const/4 v2, 0x1

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/util/JsonReader;->setLenient(Z)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->beginObject()V

    .line 167
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 169
    const-string v20, "accelToken"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 171
    :cond_1
    const-string v20, "expiresIn"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v4

    goto :goto_0

    .line 173
    :cond_2
    const-string v20, "shortId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 175
    :cond_3
    const-string/jumbo v20, "userStatus"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v7

    goto :goto_0

    .line 177
    :cond_4
    const-string v20, "accelExpiredTime"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 179
    :cond_5
    const-string/jumbo v20, "totalAccelDays"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v9

    goto :goto_0

    .line 181
    :cond_6
    const-string v20, "currentTime"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v10

    goto :goto_0

    .line 183
    :cond_7
    const-string v20, "contractStatus"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v12

    goto/16 :goto_0

    .line 185
    :cond_8
    const-string v20, "scopes"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 186
    invoke-static/range {p0 .. p0}, Lcom/subao/common/b/k;->a(Landroid/util/JsonReader;)Lcom/subao/common/b/k;

    move-result-object v13

    goto/16 :goto_0

    .line 187
    :cond_9
    const-string v20, "purchaseTimes"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 188
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v14

    goto/16 :goto_0

    .line 189
    :cond_a
    const-string v20, "creditStart"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v15

    goto/16 :goto_0

    .line 191
    :cond_b
    const-string v20, "creditLength"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 192
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v17

    goto/16 :goto_0

    .line 193
    :cond_c
    const-string v20, "creditType"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v18

    goto/16 :goto_0

    .line 195
    :cond_d
    const-string v20, "creditID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 198
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->skipValue()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 202
    :catch_0
    move-exception v2

    .line 203
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 201
    :cond_f
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/util/JsonReader;->endObject()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    if-nez v3, :cond_10

    .line 206
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Create fail"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :cond_10
    new-instance v2, Lcom/subao/common/b/g;

    invoke-direct/range {v2 .. v19}, Lcom/subao/common/b/g;-><init>(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IJILcom/subao/common/b/k;IJIILjava/lang/String;)V

    return-object v2
.end method

.method public static a(Ljava/io/InputStream;)Lcom/subao/common/b/g;
    .locals 2

    .prologue
    .line 138
    if-nez p0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 142
    :cond_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 144
    :try_start_0
    invoke-static {v0}, Lcom/subao/common/b/g;->a(Landroid/util/JsonReader;)Lcom/subao/common/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 146
    invoke-static {v0}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 148
    return-object v1

    .line 146
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v1
.end method


# virtual methods
.method public a(J)Lcom/subao/common/b/g;
    .locals 21
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 296
    new-instance v2, Lcom/subao/common/b/g;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/subao/common/b/g;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/subao/common/b/g;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/subao/common/b/g;->d:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/subao/common/b/g;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/subao/common/b/g;->f:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/subao/common/b/g;->i:J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/subao/common/b/g;->g:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/subao/common/b/g;->h:Lcom/subao/common/b/k;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/subao/common/b/g;->j:I

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/subao/common/b/g;->k:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/subao/common/b/g;->l:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/subao/common/b/g;->m:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/subao/common/b/g;->n:Ljava/lang/String;

    move-object/from16 v19, v0

    move-wide/from16 v4, p1

    invoke-direct/range {v2 .. v19}, Lcom/subao/common/b/g;-><init>(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;IJILcom/subao/common/b/k;IJIILjava/lang/String;)V

    return-object v2
.end method

.method public a(Lcom/subao/common/b/g;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 248
    if-nez p1, :cond_1

    move v0, v1

    .line 266
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    if-eq p1, p0, :cond_0

    .line 254
    iget v2, p0, Lcom/subao/common/b/g;->f:I

    iget v3, p1, Lcom/subao/common/b/g;->f:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/subao/common/b/g;->d:I

    iget v3, p1, Lcom/subao/common/b/g;->d:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/subao/common/b/g;->i:J

    iget-wide v4, p1, Lcom/subao/common/b/g;->i:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/subao/common/b/g;->g:I

    iget v3, p1, Lcom/subao/common/b/g;->g:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/subao/common/b/g;->j:I

    iget v3, p1, Lcom/subao/common/b/g;->j:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/subao/common/b/g;->k:J

    iget-wide v4, p1, Lcom/subao/common/b/g;->k:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/subao/common/b/g;->l:I

    iget v3, p1, Lcom/subao/common/b/g;->l:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/subao/common/b/g;->m:I

    iget v3, p1, Lcom/subao/common/b/g;->m:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/subao/common/b/g;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/b/g;->n:Ljava/lang/String;

    .line 262
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/subao/common/b/g;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/b/g;->a:Ljava/lang/String;

    .line 263
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/subao/common/b/g;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/b/g;->c:Ljava/lang/String;

    .line 264
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/subao/common/b/g;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/b/g;->e:Ljava/lang/String;

    .line 265
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/subao/common/b/g;->h:Lcom/subao/common/b/k;

    iget-object v3, p1, Lcom/subao/common/b/g;->h:Lcom/subao/common/b/k;

    .line 266
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 230
    if-nez p1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v1

    .line 233
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    .line 234
    goto :goto_0

    .line 236
    :cond_2
    instance-of v2, p1, Lcom/subao/common/b/g;

    if-eqz v2, :cond_0

    .line 239
    check-cast p1, Lcom/subao/common/b/g;

    .line 240
    iget-wide v2, p0, Lcom/subao/common/b/g;->b:J

    iget-wide v4, p1, Lcom/subao/common/b/g;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 241
    invoke-virtual {p0, p1}, Lcom/subao/common/b/g;->a(Lcom/subao/common/b/g;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public serialize(Landroid/util/JsonWriter;)V
    .locals 4

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 272
    const-string v0, "accelToken"

    iget-object v1, p0, Lcom/subao/common/b/g;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 273
    const-string v0, "expiresIn"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-wide v2, p0, Lcom/subao/common/b/g;->b:J

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 274
    const-string v0, "shortId"

    iget-object v1, p0, Lcom/subao/common/b/g;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 275
    const-string/jumbo v0, "userStatus"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/b/g;->d:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 276
    const-string v0, "accelExpiredTime"

    iget-object v1, p0, Lcom/subao/common/b/g;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 277
    const-string/jumbo v0, "totalAccelDays"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/b/g;->f:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 278
    const-string v0, "currentTime"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-wide v2, p0, Lcom/subao/common/b/g;->i:J

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 279
    const-string v0, "contractStatus"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/b/g;->g:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 280
    const-string v0, "scopes"

    iget-object v1, p0, Lcom/subao/common/b/g;->h:Lcom/subao/common/b/k;

    invoke-static {p1, v0, v1}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/c;)Landroid/util/JsonWriter;

    .line 281
    const-string v0, "purchaseTimes"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/b/g;->j:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 282
    const-string v0, "creditStart"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-wide v2, p0, Lcom/subao/common/b/g;->k:J

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 283
    const-string v0, "creditLength"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/b/g;->l:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 284
    const-string v0, "creditType"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Lcom/subao/common/b/g;->m:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 285
    const-string v0, "creditID"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/b/g;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 286
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 287
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/subao/common/b/g;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget-wide v0, p0, Lcom/subao/common/b/g;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 332
    iget-object v0, p0, Lcom/subao/common/b/g;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget v0, p0, Lcom/subao/common/b/g;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-object v0, p0, Lcom/subao/common/b/g;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget v0, p0, Lcom/subao/common/b/g;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget v0, p0, Lcom/subao/common/b/g;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget-object v0, p0, Lcom/subao/common/b/g;->h:Lcom/subao/common/b/k;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 338
    iget-wide v0, p0, Lcom/subao/common/b/g;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 339
    iget v0, p0, Lcom/subao/common/b/g;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-wide v0, p0, Lcom/subao/common/b/g;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 341
    iget v0, p0, Lcom/subao/common/b/g;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget v0, p0, Lcom/subao/common/b/g;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget-object v0, p0, Lcom/subao/common/b/g;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    return-void
.end method
