.class public Loicq/wlogin_sdk/request/z;
.super Loicq/wlogin_sdk/request/oicq_request;
.source "request_tgtgt_nopicsig.java"


# direct methods
.method public constructor <init>(Loicq/wlogin_sdk/request/u;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Loicq/wlogin_sdk/request/oicq_request;-><init>()V

    .line 42
    const/16 v0, 0x810

    iput v0, p0, Loicq/wlogin_sdk/request/z;->t:I

    .line 43
    const/16 v0, 0xf

    iput v0, p0, Loicq/wlogin_sdk/request/z;->u:I

    .line 44
    const-string/jumbo v0, "wtlogin.exchange_emp"

    iput-object v0, p0, Loicq/wlogin_sdk/request/z;->v:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Loicq/wlogin_sdk/request/z;->x:Loicq/wlogin_sdk/request/u;

    .line 46
    iget-object v0, p0, Loicq/wlogin_sdk/request/z;->x:Loicq/wlogin_sdk/request/u;

    const/4 v1, 0x0

    iput v1, v0, Loicq/wlogin_sdk/request/u;->m:I

    .line 47
    sget-object v0, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ST:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    iput-object v0, p0, Loicq/wlogin_sdk/request/z;->y:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    .line 48
    return-void
.end method

.method private a(JIJI[B[B[BII[JIJIIIII[BJ[BLjava/util/List;)[B
    .locals 56
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJI[B[B[BII[JIJIIIII[BJ[B",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 64
    .line 65
    new-instance v4, Loicq/wlogin_sdk/b/bs;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/bs;-><init>()V

    .line 66
    new-instance v11, Loicq/wlogin_sdk/b/c;

    invoke-direct {v11}, Loicq/wlogin_sdk/b/c;-><init>()V

    .line 67
    new-instance v12, Loicq/wlogin_sdk/b/i;

    invoke-direct {v12}, Loicq/wlogin_sdk/b/i;-><init>()V

    .line 68
    new-instance v13, Loicq/wlogin_sdk/b/u;

    invoke-direct {v13}, Loicq/wlogin_sdk/b/u;-><init>()V

    .line 69
    new-instance v14, Loicq/wlogin_sdk/b/d;

    invoke-direct {v14}, Loicq/wlogin_sdk/b/d;-><init>()V

    .line 70
    new-instance v15, Loicq/wlogin_sdk/b/j;

    invoke-direct {v15}, Loicq/wlogin_sdk/b/j;-><init>()V

    .line 71
    new-instance v16, Loicq/wlogin_sdk/b/k;

    invoke-direct/range {v16 .. v16}, Loicq/wlogin_sdk/b/k;-><init>()V

    .line 72
    new-instance v22, Loicq/wlogin_sdk/b/l;

    invoke-direct/range {v22 .. v22}, Loicq/wlogin_sdk/b/l;-><init>()V

    .line 73
    new-instance v25, Loicq/wlogin_sdk/b/ac;

    invoke-direct/range {v25 .. v25}, Loicq/wlogin_sdk/b/ac;-><init>()V

    .line 74
    new-instance v27, Loicq/wlogin_sdk/b/ag;

    invoke-direct/range {v27 .. v27}, Loicq/wlogin_sdk/b/ag;-><init>()V

    .line 75
    new-instance v28, Loicq/wlogin_sdk/b/am;

    invoke-direct/range {v28 .. v28}, Loicq/wlogin_sdk/b/am;-><init>()V

    .line 76
    new-instance v29, Loicq/wlogin_sdk/b/r;

    invoke-direct/range {v29 .. v29}, Loicq/wlogin_sdk/b/r;-><init>()V

    .line 77
    new-instance v30, Loicq/wlogin_sdk/b/ao;

    invoke-direct/range {v30 .. v30}, Loicq/wlogin_sdk/b/ao;-><init>()V

    .line 78
    new-instance v17, Loicq/wlogin_sdk/b/ap;

    invoke-direct/range {v17 .. v17}, Loicq/wlogin_sdk/b/ap;-><init>()V

    .line 79
    new-instance v18, Loicq/wlogin_sdk/b/ar;

    invoke-direct/range {v18 .. v18}, Loicq/wlogin_sdk/b/ar;-><init>()V

    .line 80
    new-instance v19, Loicq/wlogin_sdk/b/ba;

    invoke-direct/range {v19 .. v19}, Loicq/wlogin_sdk/b/ba;-><init>()V

    .line 81
    new-instance v31, Loicq/wlogin_sdk/b/bd;

    invoke-direct/range {v31 .. v31}, Loicq/wlogin_sdk/b/bd;-><init>()V

    .line 82
    new-instance v20, Loicq/wlogin_sdk/b/al;

    invoke-direct/range {v20 .. v20}, Loicq/wlogin_sdk/b/al;-><init>()V

    .line 83
    new-instance v21, Loicq/wlogin_sdk/b/cr;

    invoke-direct/range {v21 .. v21}, Loicq/wlogin_sdk/b/cr;-><init>()V

    .line 84
    new-instance v23, Loicq/wlogin_sdk/b/aw;

    invoke-direct/range {v23 .. v23}, Loicq/wlogin_sdk/b/aw;-><init>()V

    .line 85
    new-instance v32, Loicq/wlogin_sdk/b/cq;

    invoke-direct/range {v32 .. v32}, Loicq/wlogin_sdk/b/cq;-><init>()V

    .line 86
    new-instance v33, Loicq/wlogin_sdk/b/bf;

    invoke-direct/range {v33 .. v33}, Loicq/wlogin_sdk/b/bf;-><init>()V

    .line 87
    new-instance v34, Loicq/wlogin_sdk/b/bh;

    invoke-direct/range {v34 .. v34}, Loicq/wlogin_sdk/b/bh;-><init>()V

    .line 88
    new-instance v24, Loicq/wlogin_sdk/b/bk;

    invoke-direct/range {v24 .. v24}, Loicq/wlogin_sdk/b/bk;-><init>()V

    .line 89
    new-instance v35, Loicq/wlogin_sdk/b/cl;

    invoke-direct/range {v35 .. v35}, Loicq/wlogin_sdk/b/cl;-><init>()V

    .line 90
    new-instance v36, Loicq/wlogin_sdk/b/by;

    invoke-direct/range {v36 .. v36}, Loicq/wlogin_sdk/b/by;-><init>()V

    .line 91
    new-instance v37, Loicq/wlogin_sdk/b/bz;

    invoke-direct/range {v37 .. v37}, Loicq/wlogin_sdk/b/bz;-><init>()V

    .line 92
    new-instance v38, Loicq/wlogin_sdk/b/cd;

    invoke-direct/range {v38 .. v38}, Loicq/wlogin_sdk/b/cd;-><init>()V

    .line 93
    new-instance v39, Loicq/wlogin_sdk/b/ci;

    invoke-direct/range {v39 .. v39}, Loicq/wlogin_sdk/b/ci;-><init>()V

    .line 94
    new-instance v40, Loicq/wlogin_sdk/b/cj;

    invoke-direct/range {v40 .. v40}, Loicq/wlogin_sdk/b/cj;-><init>()V

    .line 95
    new-instance v41, Loicq/wlogin_sdk/b/b;

    const/16 v5, 0x516

    move-object/from16 v0, v41

    invoke-direct {v0, v5}, Loicq/wlogin_sdk/b/b;-><init>(I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/z;->x:Loicq/wlogin_sdk/request/u;

    move-wide/from16 v0, p4

    move-wide/from16 v2, p22

    invoke-virtual {v5, v0, v1, v2, v3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v42

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p6

    .line 99
    invoke-virtual/range {v4 .. v10}, Loicq/wlogin_sdk/b/bs;->a(JIJI)[B

    move-result-object v43

    .line 100
    move-wide/from16 v0, p4

    move-object/from16 v2, p7

    invoke-virtual {v11, v0, v1, v2}, Loicq/wlogin_sdk/b/c;->a(J[B)[B

    move-result-object v44

    .line 102
    move-object/from16 v0, p8

    array-length v4, v0

    move-object/from16 v0, p8

    invoke-virtual {v12, v0, v4}, Loicq/wlogin_sdk/b/i;->b([BI)V

    .line 103
    invoke-virtual {v12}, Loicq/wlogin_sdk/b/i;->b()[B

    move-result-object v45

    .line 105
    const-string v4, "req2 a1:"

    invoke-static/range {v45 .. v45}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v14

    move-wide/from16 v6, p1

    move-wide/from16 v8, p14

    move/from16 v10, p3

    move/from16 v11, p13

    .line 106
    invoke-virtual/range {v5 .. v11}, Loicq/wlogin_sdk/b/d;->a(JJII)[B

    move-result-object v46

    .line 107
    move/from16 v0, p17

    move/from16 v1, p18

    move/from16 v2, p19

    move/from16 v3, p20

    invoke-virtual {v15, v0, v1, v2, v3}, Loicq/wlogin_sdk/b/j;->a(IIII)[B

    move-result-object v47

    .line 108
    move/from16 v0, p10

    move/from16 v1, p11

    move-object/from16 v2, p12

    invoke-virtual {v13, v0, v1, v2}, Loicq/wlogin_sdk/b/u;->a(II[J)[B

    move-result-object v48

    .line 109
    sget-object v4, Loicq/wlogin_sdk/request/u;->A:[B

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/b/ap;->a([B)[B

    move-result-object v49

    .line 110
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/z;->x:Loicq/wlogin_sdk/request/u;

    iget v4, v4, Loicq/wlogin_sdk/request/u;->i:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/b/aw;->a(I)[B

    move-result-object v50

    .line 111
    sget-object v4, Loicq/wlogin_sdk/request/u;->C:[B

    sget v5, Loicq/wlogin_sdk/request/u;->D:I

    sget-object v6, Loicq/wlogin_sdk/request/u;->F:[B

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6}, Loicq/wlogin_sdk/b/al;->b([BI[B)[B

    move-result-object v51

    .line 113
    const/4 v4, 0x0

    sget v5, Loicq/wlogin_sdk/request/u;->u:I

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5, v6}, Loicq/wlogin_sdk/b/cr;->a(III)[B

    move-result-object v52

    .line 114
    sget-object v4, Loicq/wlogin_sdk/request/u;->G:[B

    sget-object v5, Loicq/wlogin_sdk/request/u;->H:[B

    move-object/from16 v0, v18

    move-wide/from16 v1, p22

    invoke-virtual {v0, v1, v2, v4, v5}, Loicq/wlogin_sdk/b/ar;->a(J[B[B)[B

    move-result-object v53

    .line 116
    const-wide/32 v4, 0x5852558f

    const-string v6, "6.0.0.1971"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v6}, Loicq/wlogin_sdk/b/bk;->a(JLjava/lang/String;)[B

    move-result-object v54

    .line 117
    const/16 v5, 0xc

    .line 119
    const/4 v4, 0x0

    new-array v12, v4, [B

    .line 120
    const/4 v4, 0x0

    new-array v4, v4, [B

    .line 121
    const/4 v4, 0x0

    new-array v4, v4, [B

    .line 122
    const/4 v4, 0x0

    new-array v4, v4, [B

    .line 123
    const/4 v4, 0x0

    new-array v4, v4, [B

    .line 124
    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 v24, v0

    .line 125
    const/4 v4, 0x0

    new-array v4, v4, [B

    .line 126
    const/4 v4, 0x0

    new-array v4, v4, [B

    .line 127
    const/4 v6, 0x0

    new-array v0, v6, [B

    move-object/from16 v23, v0

    .line 128
    const/4 v6, 0x0

    new-array v14, v6, [B

    .line 129
    const/4 v6, 0x0

    new-array v6, v6, [B

    .line 130
    const/4 v6, 0x0

    new-array v6, v6, [B

    .line 131
    const/4 v7, 0x0

    new-array v13, v7, [B

    .line 132
    const/4 v7, 0x0

    new-array v7, v7, [B

    .line 133
    const/4 v8, 0x0

    new-array v8, v8, [B

    .line 134
    const/4 v9, 0x0

    new-array v9, v9, [B

    .line 135
    const/4 v10, 0x0

    new-array v10, v10, [B

    .line 136
    const/4 v11, 0x0

    new-array v11, v11, [B

    .line 138
    if-eqz p21, :cond_b

    move-object/from16 v0, p21

    array-length v15, v0

    if-lez v15, :cond_b

    .line 139
    move-object/from16 v0, v16

    move-object/from16 v1, p21

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/b/k;->a([B)[B

    move-result-object v12

    .line 140
    const/16 v5, 0xd

    move-object/from16 v26, v12

    .line 144
    :goto_0
    move/from16 v0, p10

    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_a

    .line 145
    sget v4, Loicq/wlogin_sdk/request/u;->x:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/b/ba;->a(I)[B

    move-result-object v4

    .line 146
    add-int/lit8 v5, v5, 0x1

    move-object v15, v4

    .line 150
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/z;->x:Loicq/wlogin_sdk/request/u;

    iget-object v4, v4, Loicq/wlogin_sdk/request/u;->r:[B

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/z;->x:Loicq/wlogin_sdk/request/u;

    iget-object v4, v4, Loicq/wlogin_sdk/request/u;->r:[B

    array-length v4, v4

    if-lez v4, :cond_9

    .line 151
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/z;->x:Loicq/wlogin_sdk/request/u;

    iget-object v4, v4, Loicq/wlogin_sdk/request/u;->r:[B

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/b/bh;->a([B)[B

    move-result-object v4

    .line 152
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v16, v4

    .line 156
    :goto_2
    sget-object v4, Loicq/wlogin_sdk/request/u;->N:[B

    if-eqz v4, :cond_8

    sget-object v4, Loicq/wlogin_sdk/request/u;->N:[B

    array-length v4, v4

    if-lez v4, :cond_8

    .line 157
    sget-object v4, Loicq/wlogin_sdk/request/u;->N:[B

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/b/by;->a([B)[B

    move-result-object v4

    .line 158
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v17, v4

    .line 161
    :goto_3
    sget-object v4, Loicq/wlogin_sdk/request/u;->O:[B

    if-eqz v4, :cond_7

    sget-object v4, Loicq/wlogin_sdk/request/u;->O:[B

    array-length v4, v4

    if-lez v4, :cond_7

    .line 162
    sget-object v4, Loicq/wlogin_sdk/request/u;->O:[B

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/b/bz;->a([B)[B

    move-result-object v4

    .line 163
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v18, v4

    .line 166
    :goto_4
    sget-object v4, Loicq/wlogin_sdk/request/u;->L:[B

    if-eqz v4, :cond_6

    sget-object v4, Loicq/wlogin_sdk/request/u;->L:[B

    array-length v4, v4

    if-lez v4, :cond_6

    .line 167
    sget-object v4, Loicq/wlogin_sdk/request/u;->L:[B

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/b/cd;->a([B)[B

    move-result-object v4

    .line 168
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v19, v4

    .line 171
    :goto_5
    sget-object v4, Loicq/wlogin_sdk/request/l;->J:[B

    if-eqz v4, :cond_5

    sget-object v4, Loicq/wlogin_sdk/request/l;->J:[B

    array-length v4, v4

    if-lez v4, :cond_5

    .line 172
    sget-object v4, Loicq/wlogin_sdk/request/l;->J:[B

    sget-object v6, Loicq/wlogin_sdk/request/l;->K:[B

    const-string v7, "qq"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    sget-object v8, Loicq/wlogin_sdk/request/l;->L:[B

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v6, v7, v8}, Loicq/wlogin_sdk/b/ci;->a([B[B[B[B)[B

    move-result-object v4

    .line 173
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v20, v4

    .line 176
    :goto_6
    sget-object v4, Loicq/wlogin_sdk/request/u;->R:[B

    if-eqz v4, :cond_4

    sget-object v4, Loicq/wlogin_sdk/request/u;->R:[B

    array-length v4, v4

    if-lez v4, :cond_4

    .line 177
    sget-object v4, Loicq/wlogin_sdk/request/u;->R:[B

    sget-object v6, Loicq/wlogin_sdk/request/u;->S:[B

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v6}, Loicq/wlogin_sdk/b/cj;->a([B[B)[B

    move-result-object v4

    .line 178
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v21, v4

    move v12, v5

    .line 181
    :goto_7
    sget-object v4, Loicq/wlogin_sdk/request/u;->M:[B

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/b/l;->a([B)[B

    move-result-object v22

    .line 182
    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_os_type()[B

    move-result-object v5

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_os_version()[B

    move-result-object v6

    sget v7, Loicq/wlogin_sdk/request/u;->D:I

    sget-object v8, Loicq/wlogin_sdk/request/u;->C:[B

    const/4 v4, 0x0

    new-array v9, v4, [B

    sget-object v10, Loicq/wlogin_sdk/request/u;->F:[B

    move-object/from16 v4, v25

    invoke-virtual/range {v4 .. v10}, Loicq/wlogin_sdk/b/ac;->a([B[BI[B[B[B)[B

    move-result-object v25

    .line 186
    sget v5, Loicq/wlogin_sdk/request/u;->T:I

    sget v6, Loicq/wlogin_sdk/request/u;->U:I

    sget v7, Loicq/wlogin_sdk/request/u;->V:I

    sget v8, Loicq/wlogin_sdk/request/u;->Y:I

    sget-object v9, Loicq/wlogin_sdk/request/u;->I:[B

    sget-object v10, Loicq/wlogin_sdk/request/u;->A:[B

    sget-object v11, Loicq/wlogin_sdk/request/u;->P:[B

    move-object/from16 v4, v27

    invoke-virtual/range {v4 .. v11}, Loicq/wlogin_sdk/b/ag;->a(IIII[B[B[B)[B

    move-result-object v7

    .line 190
    sget-object v4, Loicq/wlogin_sdk/request/u;->I:[B

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/b/bf;->a([B)[B

    move-result-object v8

    .line 192
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/z;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v4, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v4

    .line 193
    iget-object v9, v4, Loicq/wlogin_sdk/request/async_context;->_tgtgt_key:[B

    move-object/from16 v4, v30

    move-object/from16 v5, v22

    move-object/from16 v6, v25

    .line 194
    invoke-virtual/range {v4 .. v9}, Loicq/wlogin_sdk/b/ao;->a([B[B[B[B[B)[B

    move-result-object v27

    .line 195
    add-int/lit8 v4, v12, 0x1

    .line 196
    move-object/from16 v0, v28

    move-object/from16 v1, p24

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/b/am;->a([B)[B

    move-result-object v28

    .line 197
    add-int/lit8 v22, v4, 0x1

    .line 199
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/z;->x:Loicq/wlogin_sdk/request/u;

    iget-object v4, v4, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/z;->x:Loicq/wlogin_sdk/request/u;

    iget-object v4, v4, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    .line 200
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/z;->x:Loicq/wlogin_sdk/request/u;

    iget-object v4, v4, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/b/r;->a([B)[B

    move-result-object v4

    .line 201
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v25, v4

    .line 204
    :goto_8
    if-eqz p9, :cond_2

    move-object/from16 v0, p9

    array-length v4, v0

    if-lez v4, :cond_2

    .line 205
    move-object/from16 v0, v31

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/b/bd;->a([B)[B

    move-result-object v4

    .line 206
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v24, v4

    .line 209
    :goto_9
    if-eqz p25, :cond_1

    invoke-interface/range {p25 .. p25}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 210
    move-object/from16 v0, v32

    move-object/from16 v1, p25

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/b/cq;->a(Ljava/util/List;)[B

    move-result-object v4

    .line 211
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v23, v4

    .line 215
    :goto_a
    if-eqz v42, :cond_0

    move-object/from16 v0, v42

    iget-object v4, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    if-eqz v4, :cond_0

    move-object/from16 v0, v42

    iget-object v4, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    array-length v4, v4

    if-lez v4, :cond_0

    move-object/from16 v0, v42

    iget-object v4, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    if-eqz v4, :cond_0

    move-object/from16 v0, v42

    iget-object v4, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    array-length v4, v4

    if-lez v4, :cond_0

    move-object/from16 v0, v42

    iget-object v4, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    if-eqz v4, :cond_0

    move-object/from16 v0, v42

    iget-object v4, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    array-length v4, v4

    if-lez v4, :cond_0

    .line 218
    move-object/from16 v0, v42

    iget-object v5, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    sget-object v8, Loicq/wlogin_sdk/request/u;->A:[B

    move-object/from16 v0, v42

    iget-object v9, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    const-wide/16 v12, 0x1

    move-object/from16 v0, v42

    iget-object v14, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    move-object/from16 v4, v35

    move-wide/from16 v6, p4

    move-wide/from16 v10, p22

    invoke-virtual/range {v4 .. v14}, Loicq/wlogin_sdk/b/cl;->a([BJ[B[BJJ[B)[B

    move-result-object v4

    .line 220
    add-int/lit8 v5, v22, 0x1

    .line 226
    :goto_b
    const/4 v6, 0x4

    new-array v6, v6, [B

    .line 227
    const/4 v7, 0x0

    sget v8, Loicq/wlogin_sdk/request/u;->af:I

    invoke-static {v6, v7, v8}, Loicq/wlogin_sdk/tools/util;->int32_to_buf([BII)V

    .line 228
    const/4 v7, 0x4

    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v7}, Loicq/wlogin_sdk/b/b;->b([BI)V

    .line 229
    invoke-virtual/range {v41 .. v41}, Loicq/wlogin_sdk/b/b;->b()[B

    move-result-object v6

    .line 230
    add-int/lit8 v5, v5, 0x1

    .line 232
    move-object/from16 v0, v43

    array-length v7, v0

    move-object/from16 v0, v44

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v45

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v48

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v46

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v47

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v26

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v27

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v28

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v25

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v49

    array-length v8, v0

    add-int/2addr v7, v8

    array-length v8, v15

    add-int/2addr v7, v8

    move-object/from16 v0, v24

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v50

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v51

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v52

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v23

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v53

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v16

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v54

    array-length v8, v0

    add-int/2addr v7, v8

    array-length v8, v4

    add-int/2addr v7, v8

    move-object/from16 v0, v17

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v18

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v19

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v20

    array-length v8, v0

    add-int/2addr v7, v8

    move-object/from16 v0, v21

    array-length v8, v0

    add-int/2addr v7, v8

    array-length v8, v6

    add-int/2addr v7, v8

    .line 242
    new-array v7, v7, [B

    .line 243
    const/4 v8, 0x0

    .line 245
    const/4 v9, 0x0

    move-object/from16 v0, v43

    array-length v10, v0

    move-object/from16 v0, v43

    invoke-static {v0, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    move-object/from16 v0, v43

    array-length v9, v0

    add-int/2addr v8, v9

    .line 247
    const/4 v9, 0x0

    move-object/from16 v0, v44

    array-length v10, v0

    move-object/from16 v0, v44

    invoke-static {v0, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    move-object/from16 v0, v44

    array-length v9, v0

    add-int/2addr v8, v9

    .line 249
    const/4 v9, 0x0

    move-object/from16 v0, v45

    array-length v10, v0

    move-object/from16 v0, v45

    invoke-static {v0, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    move-object/from16 v0, v45

    array-length v9, v0

    add-int/2addr v8, v9

    .line 251
    const/4 v9, 0x0

    move-object/from16 v0, v48

    array-length v10, v0

    move-object/from16 v0, v48

    invoke-static {v0, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    move-object/from16 v0, v48

    array-length v9, v0

    add-int/2addr v8, v9

    .line 253
    const/4 v9, 0x0

    move-object/from16 v0, v46

    array-length v10, v0

    move-object/from16 v0, v46

    invoke-static {v0, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    move-object/from16 v0, v46

    array-length v9, v0

    add-int/2addr v8, v9

    .line 255
    const/4 v9, 0x0

    move-object/from16 v0, v47

    array-length v10, v0

    move-object/from16 v0, v47

    invoke-static {v0, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    move-object/from16 v0, v47

    array-length v9, v0

    add-int/2addr v8, v9

    .line 257
    const/4 v9, 0x0

    move-object/from16 v0, v26

    array-length v10, v0

    move-object/from16 v0, v26

    invoke-static {v0, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    move-object/from16 v0, v26

    array-length v9, v0

    add-int/2addr v8, v9

    .line 259
    const/4 v9, 0x0

    move-object/from16 v0, v27

    array-length v10, v0

    move-object/from16 v0, v27

    invoke-static {v0, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    move-object/from16 v0, v27

    array-length v9, v0

    add-int/2addr v8, v9

    .line 261
    const/4 v9, 0x0

    move-object/from16 v0, v28

    array-length v10, v0

    move-object/from16 v0, v28

    invoke-static {v0, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    move-object/from16 v0, v28

    array-length v9, v0

    add-int/2addr v8, v9

    .line 263
    const/4 v9, 0x0

    move-object/from16 v0, v25

    array-length v10, v0

    move-object/from16 v0, v25

    invoke-static {v0, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    move-object/from16 v0, v25

    array-length v9, v0

    add-int/2addr v8, v9

    .line 265
    const/4 v9, 0x0

    move-object/from16 v0, v49

    array-length v10, v0

    move-object/from16 v0, v49

    invoke-static {v0, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    move-object/from16 v0, v49

    array-length v9, v0

    add-int/2addr v8, v9

    .line 267
    const/4 v9, 0x0

    array-length v10, v15

    invoke-static {v15, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    array-length v9, v15

    add-int/2addr v8, v9

    .line 269
    const/4 v9, 0x0

    move-object/from16 v0, v24

    array-length v10, v0

    move-object/from16 v0, v24

    invoke-static {v0, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    move-object/from16 v0, v24

    array-length v9, v0

    add-int/2addr v8, v9

    .line 271
    const/4 v9, 0x0

    move-object/from16 v0, v50

    array-length v10, v0

    move-object/from16 v0, v50

    invoke-static {v0, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    move-object/from16 v0, v50

    array-length v9, v0

    add-int/2addr v8, v9

    .line 273
    const/4 v9, 0x0

    move-object/from16 v0, v51

    array-length v10, v0

    move-object/from16 v0, v51

    invoke-static {v0, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    move-object/from16 v0, v51

    array-length v9, v0

    add-int/2addr v8, v9

    .line 275
    const/4 v9, 0x0

    move-object/from16 v0, v52

    array-length v10, v0

    move-object/from16 v0, v52

    invoke-static {v0, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    move-object/from16 v0, v52

    array-length v9, v0

    add-int/2addr v8, v9

    .line 277
    const/4 v9, 0x0

    move-object/from16 v0, v23

    array-length v10, v0

    move-object/from16 v0, v23

    invoke-static {v0, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    move-object/from16 v0, v23

    array-length v9, v0

    add-int/2addr v8, v9

    .line 279
    const/4 v9, 0x0

    move-object/from16 v0, v53

    array-length v10, v0

    move-object/from16 v0, v53

    invoke-static {v0, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    move-object/from16 v0, v53

    array-length v9, v0

    add-int/2addr v8, v9

    .line 281
    const/4 v9, 0x0

    move-object/from16 v0, v16

    array-length v10, v0

    move-object/from16 v0, v16

    invoke-static {v0, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    move-object/from16 v0, v16

    array-length v9, v0

    add-int/2addr v8, v9

    .line 283
    const/4 v9, 0x0

    move-object/from16 v0, v54

    array-length v10, v0

    move-object/from16 v0, v54

    invoke-static {v0, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    move-object/from16 v0, v54

    array-length v9, v0

    add-int/2addr v8, v9

    .line 285
    const/4 v9, 0x0

    array-length v10, v4

    invoke-static {v4, v9, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    array-length v4, v4

    add-int/2addr v4, v8

    .line 287
    const/4 v8, 0x0

    move-object/from16 v0, v17

    array-length v9, v0

    move-object/from16 v0, v17

    invoke-static {v0, v8, v7, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    move-object/from16 v0, v17

    array-length v8, v0

    add-int/2addr v4, v8

    .line 289
    const/4 v8, 0x0

    move-object/from16 v0, v18

    array-length v9, v0

    move-object/from16 v0, v18

    invoke-static {v0, v8, v7, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    move-object/from16 v0, v18

    array-length v8, v0

    add-int/2addr v4, v8

    .line 291
    const/4 v8, 0x0

    move-object/from16 v0, v19

    array-length v9, v0

    move-object/from16 v0, v19

    invoke-static {v0, v8, v7, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    move-object/from16 v0, v19

    array-length v8, v0

    add-int/2addr v4, v8

    .line 293
    const/4 v8, 0x0

    move-object/from16 v0, v20

    array-length v9, v0

    move-object/from16 v0, v20

    invoke-static {v0, v8, v7, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    move-object/from16 v0, v20

    array-length v8, v0

    add-int/2addr v4, v8

    .line 295
    const/4 v8, 0x0

    move-object/from16 v0, v21

    array-length v9, v0

    move-object/from16 v0, v21

    invoke-static {v0, v8, v7, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    move-object/from16 v0, v21

    array-length v8, v0

    add-int/2addr v4, v8

    .line 297
    const/4 v8, 0x0

    array-length v9, v6

    invoke-static {v6, v8, v7, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    array-length v6, v6

    add-int/2addr v4, v6

    .line 300
    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/z;->u:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4, v5}, Loicq/wlogin_sdk/request/z;->a([BII)[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/z;->y:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/z;->A:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/z;->B:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Loicq/wlogin_sdk/request/z;->a([BLoicq/wlogin_sdk/request/oicq_request$EncryptionMethod;[B[B)[B

    move-result-object v4

    return-object v4

    .line 222
    :cond_0
    const-string v4, "request_tgtgt_nopicsig req without DA1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v13

    move/from16 v5, v22

    goto/16 :goto_b

    :cond_1
    move-object/from16 v23, v14

    goto/16 :goto_a

    :cond_2
    move-object/from16 v24, v23

    goto/16 :goto_9

    :cond_3
    move-object/from16 v25, v24

    goto/16 :goto_8

    :cond_4
    move-object/from16 v21, v11

    move v12, v5

    goto/16 :goto_7

    :cond_5
    move-object/from16 v20, v10

    goto/16 :goto_6

    :cond_6
    move-object/from16 v19, v9

    goto/16 :goto_5

    :cond_7
    move-object/from16 v18, v8

    goto/16 :goto_4

    :cond_8
    move-object/from16 v17, v7

    goto/16 :goto_3

    :cond_9
    move-object/from16 v16, v6

    goto/16 :goto_2

    :cond_a
    move-object v15, v4

    goto/16 :goto_1

    :cond_b
    move-object/from16 v26, v12

    goto/16 :goto_0
.end method


# virtual methods
.method public a(JIJI[B[B[BII[JIJIIIII[BJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 32

    .prologue
    .line 315
    const-string v4, "start request_tgtgt_nopicsig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    sget v7, Loicq/wlogin_sdk/request/u;->w:I

    .line 320
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/z;->c([B)[B

    move-result-object v12

    .line 321
    if-nez v12, :cond_0

    .line 322
    const/16 v4, -0x3f6

    .line 361
    :goto_0
    return v4

    .line 325
    :cond_0
    const/4 v4, 0x0

    move/from16 v30, v4

    .line 327
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/z;->y:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    sget-object v5, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ST:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    if-ne v4, v5, :cond_2

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/z;->B:[B

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/z;->B:[B

    array-length v4, v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/z;->A:[B

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/z;->A:[B

    array-length v4, v4

    if-nez v4, :cond_2

    .line 330
    :cond_1
    sget-object v4, Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;->EM_ECDH:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    move-object/from16 v0, p0

    iput-object v4, v0, Loicq/wlogin_sdk/request/z;->y:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    .line 331
    sget-object v4, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    const v5, 0x26f590

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/report/report_t1;->attr_api(I)V

    .line 332
    const-string/jumbo v4, "using wt st encrypt body but no st key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_2
    sget-object v28, Loicq/wlogin_sdk/request/u;->E:[B

    move-object/from16 v0, p24

    iget-object v0, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_domains:Ljava/util/List;

    move-object/from16 v29, v0

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move-object/from16 v16, p12

    move/from16 v17, p13

    move-wide/from16 v18, p14

    move/from16 v20, v7

    move/from16 v21, p17

    move/from16 v22, p18

    move/from16 v23, p19

    move/from16 v24, p20

    move-object/from16 v25, p21

    move-wide/from16 v26, p22

    invoke-direct/range {v4 .. v29}, Loicq/wlogin_sdk/request/z;->a(JIJI[B[B[BII[JIJIIIII[BJ[BLjava/util/List;)[B

    move-result-object v4

    .line 348
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/z;->y:Loicq/wlogin_sdk/request/oicq_request$EncryptionMethod;

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2, v4, v5}, Loicq/wlogin_sdk/request/z;->a(J[BLoicq/wlogin_sdk/request/oicq_request$EncryptionMethod;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/z;->x:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v4, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p24

    invoke-virtual {v0, v4, v5, v1}, Loicq/wlogin_sdk/request/z;->a(Ljava/lang/String;ZLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    .line 350
    if-eqz v4, :cond_3

    .line 360
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end request_tgtgt_nopicsig ret "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 353
    :cond_3
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/z;->b()I

    move-result v5

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retry num:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ret:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/16 v4, 0xb4

    if-eq v5, v4, :cond_4

    move v4, v5

    .line 356
    goto :goto_2

    .line 358
    :cond_4
    add-int/lit8 v4, v30, 0x1

    const/4 v6, 0x1

    move/from16 v0, v30

    if-lt v0, v6, :cond_5

    move v4, v5

    goto :goto_2

    :cond_5
    move/from16 v30, v4

    goto/16 :goto_1
.end method
