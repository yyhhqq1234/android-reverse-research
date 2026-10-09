.class public final Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;
.super Ljava/lang/Object;
.source "DraggableRelativeLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Params"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0018\u0008\u0000\u0018\u0000 *2\u00020\u0001:\u0001*B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R\u001a\u0010$\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0006\"\u0004\u0008&\u0010\u0008R\u001a\u0010\'\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0006\"\u0004\u0008)\u0010\u0008\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;",
        "",
        "()V",
        "dismissingYPos",
        "",
        "getDismissingYPos",
        "()I",
        "setDismissingYPos",
        "(I)V",
        "dismissingYVelocity",
        "getDismissingYVelocity",
        "setDismissingYVelocity",
        "dragDirection",
        "getDragDirection",
        "setDragDirection",
        "dragThresholdY",
        "getDragThresholdY",
        "setDragThresholdY",
        "draggingDisabled",
        "",
        "getDraggingDisabled",
        "()Z",
        "setDraggingDisabled",
        "(Z)V",
        "height",
        "getHeight",
        "setHeight",
        "maxXPos",
        "getMaxXPos",
        "setMaxXPos",
        "maxYPos",
        "getMaxYPos",
        "setMaxYPos",
        "messageHeight",
        "getMessageHeight",
        "setMessageHeight",
        "offScreenYPos",
        "getOffScreenYPos",
        "setOffScreenYPos",
        "posY",
        "getPosY",
        "setPosY",
        "Companion",
        "com.onesignal.inAppMessages"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params$Companion;

.field public static final DRAGGABLE_DIRECTION_DOWN:I = 0x1

.field public static final DRAGGABLE_DIRECTION_UP:I


# instance fields
.field private dismissingYPos:I

.field private dismissingYVelocity:I

.field private dragDirection:I

.field private dragThresholdY:I

.field private draggingDisabled:Z

.field private height:I

.field private maxXPos:I

.field private maxYPos:I

.field private messageHeight:I

.field private offScreenYPos:I

.field private posY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->Companion:Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDismissingYPos()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->dismissingYPos:I

    return v0
.end method

.method public final getDismissingYVelocity()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->dismissingYVelocity:I

    return v0
.end method

.method public final getDragDirection()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->dragDirection:I

    return v0
.end method

.method public final getDragThresholdY()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->dragThresholdY:I

    return v0
.end method

.method public final getDraggingDisabled()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->draggingDisabled:Z

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->height:I

    return v0
.end method

.method public final getMaxXPos()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->maxXPos:I

    return v0
.end method

.method public final getMaxYPos()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->maxYPos:I

    return v0
.end method

.method public final getMessageHeight()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->messageHeight:I

    return v0
.end method

.method public final getOffScreenYPos()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->offScreenYPos:I

    return v0
.end method

.method public final getPosY()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->posY:I

    return v0
.end method

.method public final setDismissingYPos(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->dismissingYPos:I

    return-void
.end method

.method public final setDismissingYVelocity(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->dismissingYVelocity:I

    return-void
.end method

.method public final setDragDirection(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->dragDirection:I

    return-void
.end method

.method public final setDragThresholdY(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->dragThresholdY:I

    return-void
.end method

.method public final setDraggingDisabled(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->draggingDisabled:Z

    return-void
.end method

.method public final setHeight(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->height:I

    return-void
.end method

.method public final setMaxXPos(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->maxXPos:I

    return-void
.end method

.method public final setMaxYPos(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->maxYPos:I

    return-void
.end method

.method public final setMessageHeight(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->messageHeight:I

    return-void
.end method

.method public final setOffScreenYPos(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->offScreenYPos:I

    return-void
.end method

.method public final setPosY(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/onesignal/inAppMessages/internal/display/impl/DraggableRelativeLayout$Params;->posY:I

    return-void
.end method
