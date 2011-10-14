.class Landroid/text/method/CharacterPickerDialog$2;
.super Landroid/content/BroadcastReceiver;
.source "CharacterPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/CharacterPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/method/CharacterPickerDialog;


# direct methods
.method constructor <init>(Landroid/text/method/CharacterPickerDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Landroid/text/method/CharacterPickerDialog$2;->this$0:Landroid/text/method/CharacterPickerDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 215
    const-string v1, "SGH-I777"

    const-string v2, "SGH-I927"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 216
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 218
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog$2;->this$0:Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {v1}, Landroid/text/method/CharacterPickerDialog;->dismiss()V

    .line 221
    .end local v0           #action:Ljava/lang/String;
    :cond_1b
    return-void
.end method
