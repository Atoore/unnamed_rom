.class Lcom/android/mms/ui/CbConfigPreferenceActivity$4;
.super Ljava/lang/Object;
.source "CbConfigPreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CbConfigPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$4;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 298
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 299
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-le v3, v7, :cond_0

    .line 300
    iget-object v3, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$4;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v3}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v3

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    sub-int/2addr v4, v7

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 302
    .local v2, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 303
    const v3, 0x7f090098

    invoke-interface {p1, v5, v5, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 304
    const v3, 0x7f09006d

    invoke-interface {p1, v5, v6, v6, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 306
    .end local v2           #pref:Landroid/preference/CheckBoxPreference;
    :cond_0
    return-void
.end method
