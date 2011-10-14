.class Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmilPlayerController"
.end annotation


# instance fields
.field private final mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)V
    .locals 0
    .parameter
    .parameter "player"

    .prologue
    .line 896
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 897
    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    .line 898
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 954
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartAction()Z
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStartAction()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 967
    const-string v0, "Mms/SmilPlayerController"

    const-string v1, "next()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->next()V

    .line 972
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    .line 924
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1500(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 926
    :cond_0
    return-void
.end method

.method public prev()V
    .locals 2

    .prologue
    .line 959
    const-string v0, "Mms/SmilPlayerController"

    const-string v1, "prev()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->prev()V

    .line 964
    :cond_0
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 929
    const-string v2, "Mms/SmilPlayerController"

    const-string v3, "start()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v2, :cond_0

    .line 934
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 936
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/SlideshowActivity;->access$1602(Lcom/android/mms/ui/SlideshowActivity;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$1600(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 943
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$1700(Lcom/android/mms/ui/SlideshowActivity;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v5, v4, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 948
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$200(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 949
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilPlayer;->start()V

    .line 951
    :cond_0
    return-void

    .line 937
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 939
    .local v0, e1:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v2, v4}, Lcom/android/mms/ui/SlideshowActivity;->access$1602(Lcom/android/mms/ui/SlideshowActivity;Z)Z

    .line 940
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 945
    .end local v0           #e1:Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v3}, Lcom/android/mms/ui/SlideshowActivity;->access$1700(Lcom/android/mms/ui/SlideshowActivity;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/SlideshowActivity;->access$1802(Lcom/android/mms/ui/SlideshowActivity;I)I

    .line 946
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$1700(Lcom/android/mms/ui/SlideshowActivity;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v3}, Lcom/android/mms/ui/SlideshowActivity;->access$1800(Lcom/android/mms/ui/SlideshowActivity;)I

    move-result v3

    invoke-virtual {v2, v5, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1
.end method
