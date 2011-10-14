.class public abstract Landroid/sec/clipboard/IClipboardService$Stub;
.super Landroid/os/Binder;
.source "IClipboardService.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/IClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/IClipboardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.clipboard.IClipboardService"

.field static final TRANSACTION_AddClipboardFormatListener:I = 0x1

.field static final TRANSACTION_GetClipboardData:I = 0x4

.field static final TRANSACTION_GetClipboardFormatName:I = 0x3

.field static final TRANSACTION_IsShowUIClipboardData:I = 0x6

.field static final TRANSACTION_ObserverUpdate:I = 0x7

.field static final TRANSACTION_RegistClipboardWorkingFormUiInterface:I = 0x9

.field static final TRANSACTION_RegisterClipboardFormat:I = 0x8

.field static final TRANSACTION_RemoveClipboardFormatListener:I = 0xa

.field static final TRANSACTION_SetClipboardData:I = 0xd

.field static final TRANSACTION_SetSyncClipboardData:I = 0xc

.field static final TRANSACTION_ShowUIClipboardData:I = 0xe

.field static final TRANSACTION_UpdateUIClipboardData:I = 0xf

.field static final TRANSACTION_dismissUIDataDialog:I = 0x2

.field static final TRANSACTION_getDataSize:I = 0x5

.field static final TRANSACTION_showUIDataDialog:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p0, p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_3
    return-object v1

    .line 26
    :cond_4
    const-string v1, "android.sec.clipboard.IClipboardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Landroid/sec/clipboard/IClipboardService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/sec/clipboard/IClipboardService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sec/clipboard/IClipboardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "android.sec.clipboard.IClipboardService"

    .line 38
    sparse-switch p1, :sswitch_data_19a

    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_b
    return v3

    .line 42
    :sswitch_c
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 43
    goto :goto_b

    .line 47
    :sswitch_13
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/sec/clipboard/IClipboardFormatListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardFormatListener;

    move-result-object v0

    .line 50
    .local v0, _arg0:Landroid/sec/clipboard/IClipboardFormatListener;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z

    move-result v2

    .line 51
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v2, :cond_2f

    move v3, v4

    :goto_2a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 53
    goto :goto_b

    :cond_2f
    move v3, v6

    .line 52
    goto :goto_2a

    .line 57
    .end local v0           #_arg0:Landroid/sec/clipboard/IClipboardFormatListener;
    .end local v2           #_result:Z
    :sswitch_31
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->dismissUIDataDialog()V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 60
    goto :goto_b

    .line 64
    :sswitch_3e
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->GetClipboardFormatName(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 70
    goto :goto_b

    .line 74
    .end local v0           #_arg0:I
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_53
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 78
    .local v2, _result:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v2, :cond_6d

    .line 80
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v2, p3, v4}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6b
    move v3, v4

    .line 86
    goto :goto_b

    .line 84
    :cond_6d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6b

    .line 90
    .end local v0           #_arg0:I
    .end local v2           #_result:Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_71
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->getDataSize()I

    move-result v2

    .line 92
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 94
    goto :goto_b

    .line 98
    .end local v2           #_result:I
    :sswitch_82
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->IsShowUIClipboardData()Z

    move-result v2

    .line 100
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v2, :cond_97

    move v3, v4

    :goto_91
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 102
    goto/16 :goto_b

    :cond_97
    move v3, v6

    .line 101
    goto :goto_91

    .line 106
    .end local v2           #_result:Z
    :sswitch_99
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b9

    .line 111
    sget-object v3, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 116
    .local v1, _arg1:Landroid/sec/clipboard/data/ClipboardData;
    :goto_b0
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardService$Stub;->ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 118
    goto/16 :goto_b

    .line 114
    .end local v1           #_arg1:Landroid/sec/clipboard/data/ClipboardData;
    :cond_b9
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_b0

    .line 122
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/sec/clipboard/data/ClipboardData;
    :sswitch_bb
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->RegisterClipboardFormat(Ljava/lang/String;)I

    move-result v2

    .line 126
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 128
    goto/16 :goto_b

    .line 132
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_d1
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    move-result-object v0

    .line 135
    .local v0, _arg0:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 137
    goto/16 :goto_b

    .line 141
    .end local v0           #_arg0:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :sswitch_e7
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/sec/clipboard/IClipboardFormatListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardFormatListener;

    move-result-object v0

    .line 144
    .local v0, _arg0:Landroid/sec/clipboard/IClipboardFormatListener;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z

    move-result v2

    .line 145
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v2, :cond_104

    move v3, v4

    :goto_fe
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 147
    goto/16 :goto_b

    :cond_104
    move v3, v6

    .line 146
    goto :goto_fe

    .line 151
    .end local v0           #_arg0:Landroid/sec/clipboard/IClipboardFormatListener;
    .end local v2           #_result:Z
    :sswitch_106
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/sec/clipboard/IClipboardService$Stub;->showUIDataDialog()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 154
    goto/16 :goto_b

    .line 158
    :sswitch_114
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_137

    .line 161
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 166
    .local v0, _arg0:Ljava/lang/CharSequence;
    :goto_127
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/IClipboardService$Stub;->SetSyncClipboardData(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 167
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v2, :cond_139

    move v3, v4

    :goto_131
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 169
    goto/16 :goto_b

    .line 164
    .end local v0           #_arg0:Ljava/lang/CharSequence;
    .end local v2           #_result:Z
    :cond_137
    const/4 v0, 0x0

    .restart local v0       #_arg0:Ljava/lang/CharSequence;
    goto :goto_127

    .restart local v2       #_result:Z
    :cond_139
    move v3, v6

    .line 168
    goto :goto_131

    .line 173
    .end local v0           #_arg0:Ljava/lang/CharSequence;
    .end local v2           #_result:Z
    :sswitch_13b
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_162

    .line 178
    sget-object v3, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 183
    .restart local v1       #_arg1:Landroid/sec/clipboard/data/ClipboardData;
    :goto_152
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardService$Stub;->SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v2

    .line 184
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v2, :cond_164

    move v3, v4

    :goto_15c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 186
    goto/16 :goto_b

    .line 181
    .end local v1           #_arg1:Landroid/sec/clipboard/data/ClipboardData;
    .end local v2           #_result:Z
    :cond_162
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_152

    .restart local v2       #_result:Z
    :cond_164
    move v3, v6

    .line 185
    goto :goto_15c

    .line 190
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/sec/clipboard/data/ClipboardData;
    .end local v2           #_result:Z
    :sswitch_166
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 194
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v1

    .line 195
    .local v1, _arg1:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardService$Stub;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 197
    goto/16 :goto_b

    .line 201
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    :sswitch_180
    const-string v3, "android.sec.clipboard.IClipboardService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 205
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v1

    .line 206
    .restart local v1       #_arg1:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-virtual {p0, v0, v1}, Landroid/sec/clipboard/IClipboardService$Stub;->UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 208
    goto/16 :goto_b

    .line 38
    :sswitch_data_19a
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_31
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_53
        0x5 -> :sswitch_71
        0x6 -> :sswitch_82
        0x7 -> :sswitch_99
        0x8 -> :sswitch_bb
        0x9 -> :sswitch_d1
        0xa -> :sswitch_e7
        0xb -> :sswitch_106
        0xc -> :sswitch_114
        0xd -> :sswitch_13b
        0xe -> :sswitch_166
        0xf -> :sswitch_180
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
