.class final Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private freqLimitLevel:I

.field private freqLimitLevelInteger:Ljava/lang/Integer;

.field private lastFreqLimitLevel:I

.field final synthetic this$0:Lcom/vivo/vivogamesdk/VivoGameSDK;

.field private final timetick:I


# direct methods
.method private constructor <init>(Lcom/vivo/vivogamesdk/VivoGameSDK;)V
    .locals 2

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->this$0:Lcom/vivo/vivogamesdk/VivoGameSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->freqLimitLevelInteger:Ljava/lang/Integer;

    iput v1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->freqLimitLevel:I

    iput v1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->lastFreqLimitLevel:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->timetick:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/vivogamesdk/VivoGameSDK;Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;-><init>(Lcom/vivo/vivogamesdk/VivoGameSDK;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->this$0:Lcom/vivo/vivogamesdk/VivoGameSDK;

    invoke-static {v0}, Lcom/vivo/vivogamesdk/VivoGameSDK;->access$0(Lcom/vivo/vivogamesdk/VivoGameSDK;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->this$0:Lcom/vivo/vivogamesdk/VivoGameSDK;

    invoke-static {v0}, Lcom/vivo/vivogamesdk/VivoGameSDK;->access$1(Lcom/vivo/vivogamesdk/VivoGameSDK;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->this$0:Lcom/vivo/vivogamesdk/VivoGameSDK;

    invoke-static {v0}, Lcom/vivo/vivogamesdk/VivoGameSDK;->access$1(Lcom/vivo/vivogamesdk/VivoGameSDK;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->this$0:Lcom/vivo/vivogamesdk/VivoGameSDK;

    invoke-static {v1}, Lcom/vivo/vivogamesdk/VivoGameSDK;->access$2(Lcom/vivo/vivogamesdk/VivoGameSDK;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->freqLimitLevelInteger:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->freqLimitLevelInteger:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->freqLimitLevel:I

    invoke-static {}, Lcom/vivo/vivogamesdk/VivoGameSDK;->access$3()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "VivoGameSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "freqLimitLevel = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->freqLimitLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->freqLimitLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->freqLimitLevel:I

    iget v1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->lastFreqLimitLevel:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->this$0:Lcom/vivo/vivogamesdk/VivoGameSDK;

    invoke-static {v0}, Lcom/vivo/vivogamesdk/VivoGameSDK;->access$4(Lcom/vivo/vivogamesdk/VivoGameSDK;)Lcom/vivo/vivogamesdk/GameEngineCallBack;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/vivo/vivogamesdk/VivoGameSDK;->access$3()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "VivoGameSDK"

    const-string v1, "notifySystemTemperature."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->this$0:Lcom/vivo/vivogamesdk/VivoGameSDK;

    invoke-static {v0}, Lcom/vivo/vivogamesdk/VivoGameSDK;->access$4(Lcom/vivo/vivogamesdk/VivoGameSDK;)Lcom/vivo/vivogamesdk/GameEngineCallBack;

    move-result-object v0

    iget v1, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->freqLimitLevel:I

    invoke-interface {v0, v1}, Lcom/vivo/vivogamesdk/GameEngineCallBack;->notifySystemTemperature(I)V

    :cond_3
    iget v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->freqLimitLevel:I

    iput v0, p0, Lcom/vivo/vivogamesdk/VivoGameSDK$VivoCPUTemperatureObserver;->lastFreqLimitLevel:I

    :cond_4
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
