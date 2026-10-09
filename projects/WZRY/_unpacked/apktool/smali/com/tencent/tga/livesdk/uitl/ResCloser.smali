.class public Lcom/tencent/tga/livesdk/uitl/ResCloser;
.super Ljava/lang/Object;
.source "ResCloser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Landroid/database/Cursor;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 57
    if-eqz p0, :cond_0

    .line 59
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 61
    :cond_0
    return-void
.end method

.method public static close(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 65
    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 69
    :cond_0
    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "res"    # Ljava/io/Closeable;

    .prologue
    .line 20
    if-nez p0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 25
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static close(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
