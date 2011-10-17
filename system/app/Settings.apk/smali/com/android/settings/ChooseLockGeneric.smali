.class public Lcom/android/settings/ChooseLockGeneric;
.super Landroid/preference/PreferenceActivity;
.source "ChooseLockGeneric.java"


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mPasswordConfirmed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    return-void
.end method

.method private disableUnusablePreferenceByDeviceEncryption(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 1
    .parameter "pref"
    .parameter "key"

    .prologue
    .line 209
    invoke-static {}, Lcom/android/settings/de/DeviceEncryption;->isB2CDeviceEncryptionFeatured()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-static {}, Lcom/android/settings/de/DeviceEncryption;->isDeviceEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "unlock_set_none"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    :cond_2
    const v0, 0x7f0800fe

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private disableUnusablePreferences(I)V
    .locals 13
    .parameter "quality"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "security_picker_category"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 134
    .local v6, picker:Landroid/preference/Preference;
    move-object v0, v6

    check-cast v0, Landroid/preference/PreferenceCategory;

    move-object v1, v0

    .line 135
    .local v1, cat:Landroid/preference/PreferenceCategory;
    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v8

    .line 136
    .local v8, preferenceCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v8, :cond_a

    .line 137
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    .line 138
    .local v7, pref:Landroid/preference/Preference;
    instance-of v9, v7, Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_2

    .line 139
    move-object v0, v7

    check-cast v0, Landroid/preference/PreferenceScreen;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, key:Ljava/lang/String;
    const/4 v2, 0x1

    .line 141
    .local v2, enabled:Z
    const-string v9, "unlock_set_none"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 142
    if-gtz p1, :cond_3

    move v2, v12

    .line 186
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    .line 187
    const v9, 0x7f0800fe

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 188
    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 192
    :cond_1
    if-eqz v2, :cond_2

    .line 193
    invoke-direct {p0, v7, v4}, Lcom/android/settings/ChooseLockGeneric;->disableUnusablePreferenceByDeviceEncryption(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 136
    .end local v2           #enabled:Z
    .end local v4           #key:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v2       #enabled:Z
    .restart local v4       #key:Ljava/lang/String;
    :cond_3
    move v2, v11

    .line 142
    goto :goto_1

    .line 143
    :cond_4
    const-string v9, "unlock_set_pattern"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 161
    const/high16 v9, 0x1

    if-gt p1, v9, :cond_5

    move v2, v12

    .line 166
    :goto_2
    if-eqz v2, :cond_0

    .line 169
    new-instance v5, Landroid/content/ComponentName;

    const-string v9, "com.android.email"

    const-string v10, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-direct {v5, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v5, mDeviceAdminComponentName:Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v9, v5}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz p1, :cond_0

    .line 171
    const/4 v2, 0x0

    .line 172
    const-string v9, "xAx"

    const-string v10, "-- Disabled Pattern. Settings!!--"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v5           #mDeviceAdminComponentName:Landroid/content/ComponentName;
    :cond_5
    move v2, v11

    .line 161
    goto :goto_2

    .line 181
    :cond_6
    const-string v9, "unlock_set_pin"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 182
    const/high16 v9, 0x2

    if-gt p1, v9, :cond_7

    move v2, v12

    :goto_3
    goto :goto_1

    :cond_7
    move v2, v11

    goto :goto_3

    .line 183
    :cond_8
    const-string v9, "unlock_set_password"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 184
    const/high16 v9, 0x5

    if-gt p1, v9, :cond_9

    move v2, v12

    :goto_4
    goto :goto_1

    :cond_9
    move v2, v11

    goto :goto_4

    .line 197
    .end local v2           #enabled:Z
    .end local v4           #key:Ljava/lang/String;
    .end local v7           #pref:Landroid/preference/Preference;
    :cond_a
    return-void
.end method

.method private updatePreferencesOrFinish()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "lockscreen.password_type"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 113
    .local v1, quality:I
    if-ne v1, v4, :cond_1

    .line 115
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 117
    .local v0, prefScreen:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 120
    :cond_0
    const v2, 0x7f040023

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->addPreferencesFromResource(I)V

    .line 121
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->disableUnusablePreferences(I)V

    .line 125
    .end local v0           #prefScreen:Landroid/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethodAndFinish(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 95
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    .line 97
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric;->updatePreferencesOrFinish()V

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric;->setResult(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 56
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 58
    if-eqz p1, :cond_0

    .line 59
    const-string v1, "password_confirmed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    .line 62
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    if-nez v1, :cond_2

    .line 63
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 64
    .local v0, helper:Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    .line 66
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric;->updatePreferencesOrFinish()V

    .line 71
    .end local v0           #helper:Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric;->updatePreferencesOrFinish()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, key:Ljava/lang/String;
    const/4 v0, 0x1

    .line 78
    .local v0, handled:Z
    const-string v2, "unlock_set_none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethodAndFinish(I)V

    .line 89
    :goto_0
    return v0

    .line 80
    :cond_0
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    const/high16 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethodAndFinish(I)V

    goto :goto_0

    .line 82
    :cond_1
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    const/high16 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethodAndFinish(I)V

    goto :goto_0

    .line 84
    :cond_2
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric;->updateUnlockMethodAndFinish(I)V

    goto :goto_0

    .line 87
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    return-void
.end method

.method updateUnlockMethodAndFinish(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x200

    const/4 v2, 0x4

    const/4 v5, 0x0

    const-string v7, "confirm_credentials"

    .line 232
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric;->mPasswordConfirmed:Z

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to update password without confirming first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 238
    if-ge p1, v0, :cond_7

    .line 241
    :goto_0
    const/high16 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 242
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    .line 243
    if-ge v1, v2, :cond_1

    move v1, v2

    .line 246
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v2

    .line 247
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 248
    const-string v4, "lockscreen.password_type"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    const-string v0, "lockscreen.password_min"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    const-string v0, "lockscreen.password_max"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    const-string v0, "confirm_credentials"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric;->startActivity(Landroid/content/Intent;)V

    .line 279
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric;->finish()V

    .line 283
    return-void

    .line 254
    :cond_3
    const/high16 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 255
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 256
    :goto_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 257
    if-eqz v0, :cond_5

    const-class v0, Lcom/android/settings/ChooseLockPatternTutorial;

    :goto_3
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 260
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 261
    const-string v0, "key_lock_method"

    const-string v2, "pattern"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v0, "confirm_credentials"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockGeneric;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    move v0, v5

    .line 255
    goto :goto_2

    .line 257
    :cond_5
    const-class v0, Lcom/android/settings/ChooseLockPattern;

    goto :goto_3

    .line 264
    :cond_6
    if-nez v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock()V

    .line 266
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockGeneric;->setResult(I)V

    goto :goto_1

    :cond_7
    move v0, p1

    goto/16 :goto_0
.end method
