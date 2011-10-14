.class Lcom/android/mms/ui/TextFieldColorPreference$1;
.super Ljava/lang/Object;
.source "TextFieldColorPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TextFieldColorPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TextFieldColorPreference;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TextFieldColorPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/mms/ui/TextFieldColorPreference$1;->this$0:Lcom/android/mms/ui/TextFieldColorPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/TextFieldColorPreference$1;->this$0:Lcom/android/mms/ui/TextFieldColorPreference;

    invoke-static {v0, p2}, Lcom/android/mms/ui/TextFieldColorPreference;->access$000(Lcom/android/mms/ui/TextFieldColorPreference;I)V

    .line 83
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 84
    return-void
.end method
