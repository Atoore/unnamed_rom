.class public abstract Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;
.super Ljava/lang/Object;
.source "AreaMailSettingListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$Result;
    }
.end annotation


# static fields
.field private static final HANDLE_RESULT:I


# instance fields
.field callback:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$1;

    invoke-direct {v0, p0}, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$1;-><init>(Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;)V

    iput-object v0, p0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;->callback:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;

    .line 74
    new-instance v0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$2;

    invoke-direct {v0, p0}, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener$2;-><init>(Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;)V

    iput-object v0, p0, Lcom/nttdocomo/android/areamail/service/AreaMailSettingListener;->mHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method


# virtual methods
.method public abstract onResult(IZI)V
.end method
