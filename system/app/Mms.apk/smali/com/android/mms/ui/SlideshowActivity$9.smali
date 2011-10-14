.class Lcom/android/mms/ui/SlideshowActivity$9;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->markAsRead(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$msgUri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$9;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$9;->val$msgUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/SlideshowActivity$9;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/mms/ui/SlideshowActivity$9;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1374
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$9;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$9;->val$msgUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$9;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1375
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$9;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v3}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 1377
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$9;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1378
    return-void
.end method
