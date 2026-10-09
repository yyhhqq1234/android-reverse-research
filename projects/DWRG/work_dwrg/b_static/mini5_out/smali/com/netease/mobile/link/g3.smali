.class public final Lcom/netease/mobile/link/g3;
.super Lcom/netease/mobile/link/k0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mobile/link/k0<",
        "Lcom/netease/mobile/link/b0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic o:Landroid/widget/TextView;

.field public final synthetic p:Lcom/netease/mobile/link/l3;


# direct methods
.method public constructor <init>(Lcom/netease/mobile/link/l3;Ljava/util/ArrayList;IIIIIILandroid/view/View;ILandroid/widget/TextView;)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    iput-object v0, v10, Lcom/netease/mobile/link/g3;->p:Lcom/netease/mobile/link/l3;

    move-object/from16 v0, p11

    iput-object v0, v10, Lcom/netease/mobile/link/g3;->o:Landroid/widget/TextView;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/netease/mobile/link/k0;-><init>(Ljava/util/ArrayList;IIIIIILandroid/view/View;I)V

    return-void
.end method
