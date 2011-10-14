.class Lcom/android/mms/ui/FontSizePreference$1;
.super Ljava/lang/Object;
.source "FontSizePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FontSizePreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FontSizePreference;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FontSizePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/mms/ui/FontSizePreference$1;->this$0:Lcom/android/mms/ui/FontSizePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/FontSizePreference$1;->this$0:Lcom/android/mms/ui/FontSizePreference;

    invoke-static {v0, p2}, Lcom/android/mms/ui/FontSizePreference;->access$000(Lcom/android/mms/ui/FontSizePreference;I)V

    .line 77
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 78
    return-void
.end method
