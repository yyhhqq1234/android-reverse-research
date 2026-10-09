.class public Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "Cocos2dxGLSurfaceView.java"


# static fields
.field private static final HANDLER_CLOSE_IME_KEYBOARD:I = 0x3

.field private static final HANDLER_OPEN_IME_KEYBOARD:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static mCocos2dxGLSurfaceView:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

.field private static sCocos2dxTextInputWraper:Lcom/tencent/msdk/framework/cocos/Cocos2dxTextInputWraper;

.field private static sHandler:Landroid/os/Handler;


# instance fields
.field private mCocos2dxEditText:Lcom/tencent/msdk/framework/cocos/Cocos2dxEditText;

.field private mCocos2dxRenderer:Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->initView()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    invoke-virtual {p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->initView()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;)Lcom/tencent/msdk/framework/cocos/Cocos2dxEditText;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->mCocos2dxEditText:Lcom/tencent/msdk/framework/cocos/Cocos2dxEditText;

    return-object v0
.end method

.method static synthetic access$100()Lcom/tencent/msdk/framework/cocos/Cocos2dxTextInputWraper;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->sCocos2dxTextInputWraper:Lcom/tencent/msdk/framework/cocos/Cocos2dxTextInputWraper;

    return-object v0
.end method

.method static synthetic access$200()Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->mCocos2dxGLSurfaceView:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;)Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->mCocos2dxRenderer:Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;

    return-object v0
.end method

.method public static closeIMEKeyboard()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 101
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 102
    sget-object v1, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 103
    return-void
.end method

.method private static dumpMotionEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    .line 106
    const/16 v5, 0xa

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "DOWN"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "UP"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "MOVE"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "CANCEL"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "OUTSIDE"

    aput-object v6, v3, v5

    const-string v5, "POINTER_DOWN"

    aput-object v5, v3, v7

    const-string v5, "POINTER_UP"

    aput-object v5, v3, v8

    const/4 v5, 0x7

    const-string v6, "7?"

    aput-object v6, v3, v5

    const/16 v5, 0x8

    const-string v6, "8?"

    aput-object v6, v3, v5

    const/16 v5, 0x9

    const-string v6, "9?"

    aput-object v6, v3, v5

    .line 107
    .local v3, "names":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 109
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    .line 110
    .local v1, "actionCode":I
    const-string v5, "event ACTION_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    if-eq v1, v7, :cond_0

    if-ne v1, v8, :cond_1

    .line 112
    :cond_0
    const-string v5, "(pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v0, 0x8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_1
    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 117
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    const-string v5, "(pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    const-string v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 122
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_3
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    sget-object v5, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method private getContentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->mCocos2dxRenderer:Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->getContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->mCocos2dxGLSurfaceView:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    return-object v0
.end method

.method public static openIMEKeyboard()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 94
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 95
    sget-object v1, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->mCocos2dxGLSurfaceView:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    invoke-direct {v1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->getContentText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    sget-object v1, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    return-void
.end method

.method public static queueAccelerometer(FFFJ)V
    .locals 7
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F
    .param p3, "timestamp"    # J

    .prologue
    .line 84
    sget-object v6, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->mCocos2dxGLSurfaceView:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    new-instance v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$1;

    move v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$1;-><init>(FFFJ)V

    invoke-virtual {v6, v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method


# virtual methods
.method public deleteBackward()V
    .locals 1

    .prologue
    .line 366
    new-instance v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$13;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$13;-><init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method public getCocos2dxEditText()Lcom/tencent/msdk/framework/cocos/Cocos2dxEditText;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->mCocos2dxEditText:Lcom/tencent/msdk/framework/cocos/Cocos2dxEditText;

    return-object v0
.end method

.method protected initView()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->setFocusableInTouchMode(Z)V

    .line 133
    sput-object p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->mCocos2dxGLSurfaceView:Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;

    .line 134
    new-instance v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxTextInputWraper;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxTextInputWraper;-><init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;)V

    sput-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->sCocos2dxTextInputWraper:Lcom/tencent/msdk/framework/cocos/Cocos2dxTextInputWraper;

    .line 136
    new-instance v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$2;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$2;-><init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;)V

    sput-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->sHandler:Landroid/os/Handler;

    .line 166
    return-void
.end method

.method public insertText(Ljava/lang/String;)V
    .locals 1
    .param p1, "pText"    # Ljava/lang/String;

    .prologue
    .line 357
    new-instance v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$12;

    invoke-direct {v0, p0, p1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$12;-><init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "pKeyCode"    # I
    .param p2, "pKeyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 341
    sparse-switch p1, :sswitch_data_0

    .line 352
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 344
    :sswitch_0
    new-instance v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$11;

    invoke-direct {v0, p0, p1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$11;-><init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;I)V

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 350
    const/4 v0, 0x1

    goto :goto_0

    .line 341
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$4;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$4;-><init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->setRenderMode(I)V

    .line 220
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->setRenderMode(I)V

    .line 200
    new-instance v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$3;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$3;-><init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "pNewSurfaceWidth"    # I
    .param p2, "pNewSurfaceHeight"    # I
    .param p3, "pOldSurfaceWidth"    # I
    .param p4, "pOldSurfaceHeight"    # I

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->mCocos2dxRenderer:Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;->setScreenWidthAndHeight(II)V

    .line 337
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "pMotionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    .line 234
    .local v12, "pointerNumber":I
    new-array v9, v12, [I

    .line 235
    .local v9, "ids":[I
    new-array v0, v12, [F

    move-object/from16 v17, v0

    .line 236
    .local v17, "xs":[F
    new-array v0, v12, [F

    move-object/from16 v22, v0

    .line 238
    .local v22, "ys":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v12, :cond_0

    .line 239
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    aput v23, v9, v4

    .line 240
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v23

    aput v23, v17, v4

    .line 241
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    aput v23, v22, v4

    .line 238
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 325
    :goto_1
    :pswitch_0
    const/16 v23, 0x1

    return v23

    .line 246
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    shr-int/lit8 v11, v23, 0x8

    .line 247
    .local v11, "indexPointerDown":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 248
    .local v6, "idPointerDown":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 249
    .local v14, "xPointerDown":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 251
    .local v19, "yPointerDown":F
    new-instance v23, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v6, v14, v2}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$5;-><init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;IFF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 261
    .end local v6    # "idPointerDown":I
    .end local v11    # "indexPointerDown":I
    .end local v14    # "xPointerDown":F
    .end local v19    # "yPointerDown":F
    :pswitch_2
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 262
    .local v5, "idDown":I
    const/16 v23, 0x0

    aget v13, v17, v23

    .line 263
    .local v13, "xDown":F
    const/16 v23, 0x0

    aget v18, v22, v23

    .line 265
    .local v18, "yDown":F
    new-instance v23, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v5, v13, v2}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$6;-><init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;IFF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 274
    .end local v5    # "idDown":I
    .end local v13    # "xDown":F
    .end local v18    # "yDown":F
    :pswitch_3
    new-instance v23, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$7;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$7;-><init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;[I[F[F)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 283
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    shr-int/lit8 v10, v23, 0x8

    .line 284
    .local v10, "indexPointUp":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 285
    .local v7, "idPointerUp":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    .line 286
    .local v15, "xPointerUp":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    .line 288
    .local v20, "yPointerUp":F
    new-instance v23, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$8;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v7, v15, v2}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$8;-><init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;IFF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 298
    .end local v7    # "idPointerUp":I
    .end local v10    # "indexPointUp":I
    .end local v15    # "xPointerUp":F
    .end local v20    # "yPointerUp":F
    :pswitch_5
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 299
    .local v8, "idUp":I
    const/16 v23, 0x0

    aget v16, v17, v23

    .line 300
    .local v16, "xUp":F
    const/16 v23, 0x0

    aget v21, v22, v23

    .line 302
    .local v21, "yUp":F
    new-instance v23, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$9;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v16

    move/from16 v3, v21

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$9;-><init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;IFF)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 311
    .end local v8    # "idUp":I
    .end local v16    # "xUp":F
    .end local v21    # "yUp":F
    :pswitch_6
    new-instance v23, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$10;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView$10;-><init>(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;[I[F[F)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public setCocos2dxEditText(Lcom/tencent/msdk/framework/cocos/Cocos2dxEditText;)V
    .locals 2
    .param p1, "pCocos2dxEditText"    # Lcom/tencent/msdk/framework/cocos/Cocos2dxEditText;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->mCocos2dxEditText:Lcom/tencent/msdk/framework/cocos/Cocos2dxEditText;

    .line 187
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->mCocos2dxEditText:Lcom/tencent/msdk/framework/cocos/Cocos2dxEditText;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->sCocos2dxTextInputWraper:Lcom/tencent/msdk/framework/cocos/Cocos2dxTextInputWraper;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->mCocos2dxEditText:Lcom/tencent/msdk/framework/cocos/Cocos2dxEditText;

    sget-object v1, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->sCocos2dxTextInputWraper:Lcom/tencent/msdk/framework/cocos/Cocos2dxTextInputWraper;

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 189
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->mCocos2dxEditText:Lcom/tencent/msdk/framework/cocos/Cocos2dxEditText;

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxEditText;->setCocos2dxGLSurfaceView(Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;)V

    .line 190
    invoke-virtual {p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->requestFocus()Z

    .line 192
    :cond_0
    return-void
.end method

.method public setCocos2dxRenderer(Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;)V
    .locals 1
    .param p1, "renderer"    # Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->mCocos2dxRenderer:Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;

    .line 170
    iget-object v0, p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->mCocos2dxRenderer:Lcom/tencent/msdk/framework/cocos/Cocos2dxRenderer;

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 171
    return-void
.end method
