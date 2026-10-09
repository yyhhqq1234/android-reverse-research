.class final Lcom/tencent/component/plugin/PluginLayoutInflater;
.super Landroid/view/LayoutInflater;
.source "PluginLayoutInflater.java"

# interfaces
.implements Lcom/tencent/component/plugin/LayoutInflaterProxy$InflaterImpl;


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginLayoutInflater"

.field private static final sClassPrefixList:[Ljava/lang/String;

.field static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;

.field private final mConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFilterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlugin:Lcom/tencent/component/plugin/Plugin;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.widget."

    aput-object v1, v0, v2

    const-string v1, "android.webkit."

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/component/plugin/PluginLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    .line 31
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/component/plugin/PluginLayoutInflater;->sConstructorSignature:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/tencent/component/plugin/LayoutInflaterProxy;Lcom/tencent/component/plugin/Plugin;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "proxy"    # Lcom/tencent/component/plugin/LayoutInflaterProxy;
    .param p3, "plugin"    # Lcom/tencent/component/plugin/Plugin;

    .prologue
    .line 46
    invoke-direct {p0, p2, p1}, Landroid/view/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginLayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginLayoutInflater;->mConstructorMap:Ljava/util/HashMap;

    .line 47
    iput-object p3, p0, Lcom/tencent/component/plugin/PluginLayoutInflater;->mPlugin:Lcom/tencent/component/plugin/Plugin;

    .line 48
    invoke-virtual {p2, p0}, Lcom/tencent/component/plugin/LayoutInflaterProxy;->setInflaterImpl(Lcom/tencent/component/plugin/LayoutInflaterProxy$InflaterImpl;)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/tencent/component/plugin/Plugin;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "plugin"    # Lcom/tencent/component/plugin/Plugin;

    .prologue
    .line 42
    new-instance v0, Lcom/tencent/component/plugin/LayoutInflaterProxy;

    invoke-direct {v0, p1}, Lcom/tencent/component/plugin/LayoutInflaterProxy;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/component/plugin/PluginLayoutInflater;-><init>(Landroid/content/Context;Lcom/tencent/component/plugin/LayoutInflaterProxy;Lcom/tencent/component/plugin/Plugin;)V

    .line 43
    return-void
.end method

.method protected constructor <init>(Lcom/tencent/component/plugin/PluginLayoutInflater;Landroid/content/Context;)V
    .locals 1
    .param p1, "original"    # Lcom/tencent/component/plugin/PluginLayoutInflater;
    .param p2, "newContext"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginLayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginLayoutInflater;->mConstructorMap:Ljava/util/HashMap;

    .line 53
    iget-object v0, p1, Lcom/tencent/component/plugin/PluginLayoutInflater;->mPlugin:Lcom/tencent/component/plugin/Plugin;

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginLayoutInflater;->mPlugin:Lcom/tencent/component/plugin/Plugin;

    .line 54
    return-void
.end method

.method private createViewFromParent(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v1, -0x1

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/tencent/component/plugin/PluginLayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "view":Landroid/view/View;
    :goto_0
    return-object v0

    .line 121
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2}, Lcom/tencent/component/plugin/PluginLayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method private createViewInternal(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi",
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v12, p0, Lcom/tencent/component/plugin/PluginLayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    monitor-enter v12

    .line 130
    :try_start_0
    iget-object v11, p0, Lcom/tencent/component/plugin/PluginLayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginLayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v14

    aput-object v14, v11, v13

    .line 132
    iget-object v11, p0, Lcom/tencent/component/plugin/PluginLayoutInflater;->mConstructorMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .local v5, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    const/4 v4, 0x0

    .line 136
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginLayoutInflater;->getFilter()Landroid/view/LayoutInflater$Filter;

    move-result-object v7

    .line 137
    .local v7, "filter":Landroid/view/LayoutInflater$Filter;
    if-nez v5, :cond_3

    .line 139
    iget-object v11, p0, Lcom/tencent/component/plugin/PluginLayoutInflater;->mPlugin:Lcom/tencent/component/plugin/Plugin;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-class v13, Landroid/view/View;

    invoke-virtual {v11, v13}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 141
    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    .line 142
    invoke-interface {v7, v4}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v1

    .line 143
    .local v1, "allowed":Z
    if-nez v1, :cond_0

    .line 144
    invoke-direct/range {p0 .. p2}, Lcom/tencent/component/plugin/PluginLayoutInflater;->failNotAllowed(Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 147
    .end local v1    # "allowed":Z
    :cond_0
    sget-object v11, Lcom/tencent/component/plugin/PluginLayoutInflater;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v4, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 148
    iget-object v11, p0, Lcom/tencent/component/plugin/PluginLayoutInflater;->mConstructorMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginLayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 170
    .local v3, "args":[Ljava/lang/Object;
    const/4 v11, 0x1

    aput-object p2, v3, v11

    .line 172
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 173
    .local v9, "view":Landroid/view/View;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x10

    if-lt v11, v13, :cond_2

    .line 174
    instance-of v11, v9, Landroid/view/ViewStub;

    if-eqz v11, :cond_2

    .line 176
    move-object v0, v9

    check-cast v0, Landroid/view/ViewStub;

    move-object v10, v0

    .line 177
    .local v10, "viewStub":Landroid/view/ViewStub;
    invoke-virtual {v10, p0}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .end local v10    # "viewStub":Landroid/view/ViewStub;
    :cond_2
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v9

    .line 151
    .end local v3    # "args":[Ljava/lang/Object;
    .end local v9    # "view":Landroid/view/View;
    :cond_3
    if-eqz v7, :cond_1

    .line 153
    :try_start_3
    iget-object v11, p0, Lcom/tencent/component/plugin/PluginLayoutInflater;->mFilterMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 154
    .local v2, "allowedState":Ljava/lang/Boolean;
    if-nez v2, :cond_5

    .line 156
    iget-object v11, p0, Lcom/tencent/component/plugin/PluginLayoutInflater;->mPlugin:Lcom/tencent/component/plugin/Plugin;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-class v13, Landroid/view/View;

    invoke-virtual {v11, v13}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 158
    if-eqz v4, :cond_4

    invoke-interface {v7, v4}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v1, 0x1

    .line 159
    .restart local v1    # "allowed":Z
    :goto_1
    iget-object v11, p0, Lcom/tencent/component/plugin/PluginLayoutInflater;->mFilterMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    if-nez v1, :cond_1

    .line 161
    invoke-direct/range {p0 .. p2}, Lcom/tencent/component/plugin/PluginLayoutInflater;->failNotAllowed(Ljava/lang/String;Landroid/util/AttributeSet;)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 182
    .end local v1    # "allowed":Z
    .end local v2    # "allowedState":Ljava/lang/Boolean;
    .end local v7    # "filter":Landroid/view/LayoutInflater$Filter;
    :catch_0
    move-exception v6

    .line 183
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    :try_start_4
    new-instance v8, Landroid/view/InflateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ": Error inflating class "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 186
    .local v8, "ie":Landroid/view/InflateException;
    invoke-virtual {v8, v6}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 187
    throw v8

    .line 206
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    .end local v8    # "ie":Landroid/view/InflateException;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v11

    .line 158
    .restart local v2    # "allowedState":Ljava/lang/Boolean;
    .restart local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .restart local v5    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .restart local v7    # "filter":Landroid/view/LayoutInflater$Filter;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 163
    :cond_5
    :try_start_5
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 164
    invoke-direct/range {p0 .. p2}, Lcom/tencent/component/plugin/PluginLayoutInflater;->failNotAllowed(Ljava/lang/String;Landroid/util/AttributeSet;)V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 189
    .end local v2    # "allowedState":Ljava/lang/Boolean;
    .end local v7    # "filter":Landroid/view/LayoutInflater$Filter;
    :catch_1
    move-exception v6

    .line 191
    .local v6, "e":Ljava/lang/ClassCastException;
    :try_start_6
    new-instance v8, Landroid/view/InflateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ": Class is not a View "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 194
    .restart local v8    # "ie":Landroid/view/InflateException;
    invoke-virtual {v8, v6}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 195
    throw v8

    .line 196
    .end local v6    # "e":Ljava/lang/ClassCastException;
    .end local v8    # "ie":Landroid/view/InflateException;
    :catch_2
    move-exception v6

    .line 198
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    throw v6

    .line 199
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v6

    .line 200
    .local v6, "e":Ljava/lang/Exception;
    new-instance v8, Landroid/view/InflateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ": Error inflating class "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v4, :cond_6

    const-string v11, "<unknown>"

    .line 202
    :goto_2
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 203
    .restart local v8    # "ie":Landroid/view/InflateException;
    invoke-virtual {v8, v6}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 204
    throw v8

    .line 202
    .end local v8    # "ie":Landroid/view/InflateException;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v11

    goto :goto_2
.end method

.method private failNotAllowed(Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 213
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Class not allowed to be inflated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1, "newContext"    # Landroid/content/Context;

    .prologue
    .line 66
    new-instance v0, Lcom/tencent/component/plugin/PluginLayoutInflater;

    invoke-direct {v0, p0, p1}, Lcom/tencent/component/plugin/PluginLayoutInflater;-><init>(Lcom/tencent/component/plugin/PluginLayoutInflater;Landroid/content/Context;)V

    return-object v0
.end method

.method public createViewImpl(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, "view":Landroid/view/View;
    const/4 v2, -0x1

    const/16 v3, 0x2e

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 98
    :try_start_0
    invoke-direct {p0, p2, p4}, Lcom/tencent/component/plugin/PluginLayoutInflater;->createViewInternal(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 107
    :try_start_1
    invoke-direct {p0, p2, p4}, Lcom/tencent/component/plugin/PluginLayoutInflater;->createViewFromParent(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 112
    :cond_1
    :goto_1
    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "PluginLayoutInflater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to create view internal for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/component/plugin/PluginLayoutInflater;->mPlugin:Lcom/tencent/component/plugin/Plugin;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 76
    sget-object v3, Lcom/tencent/component/plugin/PluginLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 78
    .local v0, "prefix":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/component/plugin/PluginLayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 79
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 88
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "view":Landroid/view/View;
    :goto_1
    return-object v1

    .line 82
    .restart local v0    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 76
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method public setFilter(Landroid/view/LayoutInflater$Filter;)V
    .locals 1
    .param p1, "filter"    # Landroid/view/LayoutInflater$Filter;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginLayoutInflater;->mFilterMap:Ljava/util/HashMap;

    .line 62
    :cond_0
    return-void
.end method
