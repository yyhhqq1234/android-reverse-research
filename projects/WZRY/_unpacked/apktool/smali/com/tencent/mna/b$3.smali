.class final Lcom/tencent/mna/b$3;
.super Ljava/lang/Object;
.source "MnaSystem.java"

# interfaces
.implements Lcom/tencent/mna/MNAObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/b;->a(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnBatteryChangedNotify(II)V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public OnQueryKartinNotify(Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;I)V
    .locals 26

    .prologue
    .line 282
    const-string v0, "OnQueryKartinNotify SpeedWrapper.notify"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/tencent/mna/b;->k()J

    move-result-wide v0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move-object/from16 v22, p21

    move/from16 v23, p22

    move-object/from16 v24, p23

    move/from16 v25, p24

    invoke-static/range {v0 .. v25}, Lcom/tencent/mna/base/jni/e;->a(JLjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;I)V

    .line 290
    return-void
.end method

.method public OnStartSpeedNotify(IILjava/lang/String;)V
    .locals 2

    .prologue
    .line 271
    const-string v0, "OnStartSpeedNotify SpeedWrapper.notify"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/tencent/mna/b;->j()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/tencent/mna/base/jni/e;->a(JIILjava/lang/String;)V

    .line 273
    return-void
.end method
