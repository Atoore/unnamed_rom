.class Lcom/android/mms/ui/MessagingPreferenceActivity$7;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 809
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$7;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 811
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$7;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const-string v2, "pref_key_service_loading_action"

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 812
    .local v0, serviceLoadingPreference:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 813
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$7;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v1, p2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$600(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 816
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
