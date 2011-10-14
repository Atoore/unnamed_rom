.class public Lcom/sec/android/app/twwallpaperchooser/MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MyReceiver.java"


# instance fields
.field private mMyReceiverContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private changeWallpaperToDefault()V
    .locals 9

    .prologue
    .line 25
    iget-object v7, p0, Lcom/sec/android/app/twwallpaperchooser/MyReceiver;->mMyReceiverContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 27
    .local v5, mContext:Landroid/content/Context;
    const-string v7, "wallpaper"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/WallpaperManager;

    .line 28
    .local v6, wpm:Landroid/app/WallpaperManager;
    new-instance v2, Ljava/io/File;

    const-string v7, "/system/wallpaper/default_wallpaper/default_wallpaper.jpg"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v2, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 32
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 34
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    .end local v3           #is:Ljava/io/InputStream;
    .local v4, is:Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v6, v4}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v3, v4

    .line 55
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :goto_0
    if-eqz v3, :cond_0

    .line 56
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 61
    :cond_0
    :goto_1
    return-void

    .line 36
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 37
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x108016e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    .line 39
    :try_start_5
    invoke-virtual {v6, v3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 40
    :catch_1
    move-exception v1

    .line 41
    .local v1, e1:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 54
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e1:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 55
    :goto_3
    if-eqz v3, :cond_1

    .line 56
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 59
    :cond_1
    :goto_4
    throw v7

    .line 46
    :cond_2
    :try_start_8
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x108016e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v3

    .line 48
    :try_start_9
    invoke-virtual {v6, v3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_0

    .line 49
    :catch_2
    move-exception v0

    .line 50
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 57
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 58
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 57
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 58
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 54
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_3

    .line 36
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_5
    move-exception v7

    move-object v0, v7

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MULTI_CSC_CLEAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    iput-object p1, p0, Lcom/sec/android/app/twwallpaperchooser/MyReceiver;->mMyReceiverContext:Landroid/content/Context;

    .line 18
    invoke-direct {p0}, Lcom/sec/android/app/twwallpaperchooser/MyReceiver;->changeWallpaperToDefault()V

    .line 20
    :cond_0
    return-void
.end method
