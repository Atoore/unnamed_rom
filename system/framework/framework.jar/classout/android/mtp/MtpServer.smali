.class public Landroid/mtp/MtpServer;
.super Ljava/lang/Object;
.source "MtpServer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpServer"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;Ljava/lang/String;J)V
    .registers 5
    .parameter "database"
    .parameter "storagePath"
    .parameter "reserveSpace"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;Ljava/lang/String;J)V

    .line 35
    return-void
.end method

.method private final native native_send_object_added(I)V
.end method

.method private final native native_send_object_removed(I)V
.end method

.method private final native native_set_locked(Z)V
.end method

.method private final native native_set_ptp_mode(Z)V
.end method

.method private final native native_setup(Landroid/mtp/MtpDatabase;Ljava/lang/String;J)V
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method


# virtual methods
.method public sendObjectAdded(I)V
    .registers 2
    .parameter "handle"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_added(I)V

    .line 47
    return-void
.end method

.method public sendObjectRemoved(I)V
    .registers 2
    .parameter "handle"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_removed(I)V

    .line 51
    return-void
.end method

.method public setLocked(Z)V
    .registers 2
    .parameter "locked"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_set_locked(Z)V

    .line 61
    return-void
.end method

.method public setPtpMode(Z)V
    .registers 2
    .parameter "usePtp"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_set_ptp_mode(Z)V

    .line 55
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_start()V

    .line 39
    return-void
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_stop()V

    .line 43
    return-void
.end method
