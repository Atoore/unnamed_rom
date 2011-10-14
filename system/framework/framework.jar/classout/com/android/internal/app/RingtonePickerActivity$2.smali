.class Lcom/android/internal/app/RingtonePickerActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "RingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/RingtonePickerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/internal/app/RingtonePickerActivity$2;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 143
    if-nez p2, :cond_3

    .line 151
    :cond_2
    :goto_2
    return-void

    .line 145
    :cond_3
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    const-string v0, "RingtonePickerActivity"

    const-string/jumbo v1, "onReceive(), sdcardunmounted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$2;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    const-string v1, "SD card UnMounted"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$2;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/RingtonePickerActivity;->finish()V

    goto :goto_2
.end method
