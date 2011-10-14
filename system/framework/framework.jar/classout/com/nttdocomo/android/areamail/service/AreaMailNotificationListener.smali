.class public abstract Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;
.super Ljava/lang/Object;
.source "AreaMailNotificationListener.java"


# static fields
.field private static final HANDLE_COMPLETE:I


# instance fields
.field callback:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener$1;

    invoke-direct {v0, p0}, Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener$1;-><init>(Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;)V

    iput-object v0, p0, Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;->callback:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;

    .line 48
    new-instance v0, Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener$2;

    invoke-direct {v0, p0}, Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener$2;-><init>(Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;)V

    iput-object v0, p0, Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;->mHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method


# virtual methods
.method public abstract onComplete(Z)V
.end method
