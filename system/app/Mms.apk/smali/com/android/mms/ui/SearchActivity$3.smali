.class Lcom/android/mms/ui/SearchActivity$3;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/SearchListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 365
    const-string v0, "Mms/SearchActivity"

    const-string v1, "onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SearchActivity;->access$300(Lcom/android/mms/ui/SearchActivity;)V

    .line 368
    return-void
.end method
