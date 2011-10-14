.class public Landroid/view/KeyEvent;
.super Landroid/view/InputEvent;
.source "KeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyEvent$DispatcherState;,
        Landroid/view/KeyEvent$Callback;
    }
.end annotation


# static fields
.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MULTIPLE:I = 0x2

.field public static final ACTION_UP:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field public static final FLAG_CANCELED:I = 0x20

.field public static final FLAG_CANCELED_LONG_PRESS:I = 0x100

.field public static final FLAG_EDITOR_ACTION:I = 0x10

.field public static final FLAG_FROM_MHL:I = 0x3

.field public static final FLAG_FROM_SYSTEM:I = 0x8

.field public static final FLAG_KEEP_TOUCH_MODE:I = 0x4

.field public static final FLAG_LONG_PRESS:I = 0x80

.field public static final FLAG_SOFT_KEYBOARD:I = 0x2

.field public static final FLAG_START_TRACKING:I = 0x40000000

.field public static final FLAG_TRACKING:I = 0x200

.field public static final FLAG_VIRTUAL_HARD_KEY:I = 0x40

.field public static final FLAG_WOKE_HERE:I = 0x1

.field public static final KEYCODE_0:I = 0x7

.field public static final KEYCODE_1:I = 0x8

.field public static final KEYCODE_2:I = 0x9

.field public static final KEYCODE_3:I = 0xa

.field public static final KEYCODE_4:I = 0xb

.field public static final KEYCODE_5:I = 0xc

.field public static final KEYCODE_6:I = 0xd

.field public static final KEYCODE_7:I = 0xe

.field public static final KEYCODE_8:I = 0xf

.field public static final KEYCODE_9:I = 0x10

.field public static final KEYCODE_A:I = 0x1d

.field public static final KEYCODE_ALT_LEFT:I = 0x39

.field public static final KEYCODE_ALT_RIGHT:I = 0x3a

.field public static final KEYCODE_APOSTROPHE:I = 0x4b

.field public static final KEYCODE_AT:I = 0x4d

.field public static final KEYCODE_B:I = 0x1e

.field public static final KEYCODE_BACK:I = 0x4

.field public static final KEYCODE_BACKSLASH:I = 0x49

.field public static final KEYCODE_BACK_FROM_MHL:I = 0x6f

.field public static final KEYCODE_BUTTON_A:I = 0x60

.field public static final KEYCODE_BUTTON_B:I = 0x61

.field public static final KEYCODE_BUTTON_C:I = 0x62

.field public static final KEYCODE_BUTTON_L1:I = 0x66

.field public static final KEYCODE_BUTTON_L2:I = 0x68

.field public static final KEYCODE_BUTTON_MODE:I = 0x6e

.field public static final KEYCODE_BUTTON_R1:I = 0x67

.field public static final KEYCODE_BUTTON_R2:I = 0x69

.field public static final KEYCODE_BUTTON_SELECT:I = 0x6d

.field public static final KEYCODE_BUTTON_START:I = 0x6c

.field public static final KEYCODE_BUTTON_THUMBL:I = 0x6a

.field public static final KEYCODE_BUTTON_THUMBR:I = 0x6b

.field public static final KEYCODE_BUTTON_X:I = 0x63

.field public static final KEYCODE_BUTTON_Y:I = 0x64

.field public static final KEYCODE_BUTTON_Z:I = 0x65

.field public static final KEYCODE_C:I = 0x1f

.field public static final KEYCODE_CALL:I = 0x5

.field public static final KEYCODE_CAMERA:I = 0x1b

.field public static final KEYCODE_CLEAR:I = 0x1c

.field public static final KEYCODE_COMMA:I = 0x37

.field public static final KEYCODE_D:I = 0x20

.field public static final KEYCODE_DEL:I = 0x43

.field public static final KEYCODE_DOT_COM:I = 0x73

.field public static final KEYCODE_DPAD_CENTER:I = 0x17

.field public static final KEYCODE_DPAD_DOWN:I = 0x14

.field public static final KEYCODE_DPAD_LEFT:I = 0x15

.field public static final KEYCODE_DPAD_RIGHT:I = 0x16

.field public static final KEYCODE_DPAD_UP:I = 0x13

.field public static final KEYCODE_E:I = 0x21

.field public static final KEYCODE_ENDCALL:I = 0x6

.field public static final KEYCODE_ENTER:I = 0x42

.field public static final KEYCODE_ENVELOPE:I = 0x41

.field public static final KEYCODE_EQUALS:I = 0x46

.field public static final KEYCODE_ERASER:I = 0x71

.field public static final KEYCODE_EXPLORER:I = 0x40

.field public static final KEYCODE_F:I = 0x22

.field public static final KEYCODE_FOCUS:I = 0x50

.field public static final KEYCODE_G:I = 0x23

.field public static final KEYCODE_GRAVE:I = 0x44

.field public static final KEYCODE_H:I = 0x24

.field public static final KEYCODE_HEADSETHOOK:I = 0x4f

.field public static final KEYCODE_HOME:I = 0x3

.field public static final KEYCODE_I:I = 0x25

.field public static final KEYCODE_J:I = 0x26

.field public static final KEYCODE_K:I = 0x27

.field public static final KEYCODE_L:I = 0x28

.field public static final KEYCODE_LEFT_BRACKET:I = 0x47

.field public static final KEYCODE_M:I = 0x29

.field public static final KEYCODE_MEDIA_FAST_FORWARD:I = 0x5a

.field public static final KEYCODE_MEDIA_NEXT:I = 0x57

.field public static final KEYCODE_MEDIA_PLAY_PAUSE:I = 0x55

.field public static final KEYCODE_MEDIA_PREVIOUS:I = 0x58

.field public static final KEYCODE_MEDIA_REWIND:I = 0x59

.field public static final KEYCODE_MEDIA_STOP:I = 0x56

.field public static final KEYCODE_MENU:I = 0x52

.field public static final KEYCODE_MINUS:I = 0x45

.field public static final KEYCODE_MUTE:I = 0x5b

.field public static final KEYCODE_N:I = 0x2a

.field public static final KEYCODE_NOTIFICATION:I = 0x53

.field public static final KEYCODE_NUM:I = 0x4e

.field public static final KEYCODE_O:I = 0x2b

.field public static final KEYCODE_P:I = 0x2c

.field public static final KEYCODE_PAGE_DOWN:I = 0x5d

.field public static final KEYCODE_PAGE_UP:I = 0x5c

.field public static final KEYCODE_PEN:I = 0x70

.field public static final KEYCODE_PERIOD:I = 0x38

.field public static final KEYCODE_PICTSYMBOLS:I = 0x5e

.field public static final KEYCODE_PLUS:I = 0x51

.field public static final KEYCODE_POUND:I = 0x12

.field public static final KEYCODE_POWER:I = 0x1a

.field public static final KEYCODE_Q:I = 0x2d

.field public static final KEYCODE_R:I = 0x2e

.field public static final KEYCODE_RIGHT_BRACKET:I = 0x48

.field public static final KEYCODE_S:I = 0x2f

.field public static final KEYCODE_SEARCH:I = 0x54

.field public static final KEYCODE_SEMICOLON:I = 0x4a

.field public static final KEYCODE_SEND_END:I = 0x75

.field public static final KEYCODE_SHIFT_LEFT:I = 0x3b

.field public static final KEYCODE_SHIFT_RIGHT:I = 0x3c

.field public static final KEYCODE_SIDE_SWITCH:I = 0x72

.field public static final KEYCODE_SLASH:I = 0x4c

.field public static final KEYCODE_SMILY:I = 0x77

.field public static final KEYCODE_SOFT_LEFT:I = 0x1

.field public static final KEYCODE_SOFT_RIGHT:I = 0x2

.field public static final KEYCODE_SPACE:I = 0x3e

.field public static final KEYCODE_STAR:I = 0x11

.field public static final KEYCODE_SWITCH_CHARSET:I = 0x5f

.field public static final KEYCODE_SYM:I = 0x3f

.field public static final KEYCODE_SYMBOL:I = 0x76

.field public static final KEYCODE_T:I = 0x30

.field public static final KEYCODE_TAB:I = 0x3d

.field public static final KEYCODE_U:I = 0x31

.field public static final KEYCODE_UNKNOWN:I = 0x0

.field public static final KEYCODE_V:I = 0x32

.field public static final KEYCODE_VOICE_SEARCH:I = 0x74

.field public static final KEYCODE_VOLUME_DOWN:I = 0x19

.field public static final KEYCODE_VOLUME_UP:I = 0x18

.field public static final KEYCODE_W:I = 0x33

.field public static final KEYCODE_X:I = 0x34

.field public static final KEYCODE_Y:I = 0x35

.field public static final KEYCODE_Z:I = 0x36

.field private static final LAST_KEYCODE:I = 0x6e

.field public static final MAX_KEYCODE:I = 0x54
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final META_ALT_LEFT_ON:I = 0x10

.field public static final META_ALT_ON:I = 0x2

.field public static final META_ALT_RIGHT_ON:I = 0x20

.field public static final META_SHIFT_LEFT_ON:I = 0x40

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SHIFT_RIGHT_ON:I = 0x80

.field public static final META_SYM_ON:I = 0x4

.field static final TAG:Ljava/lang/String; = "KeyEvent"


# instance fields
.field private mAction:I

.field private mCharacters:Ljava/lang/String;

.field private mDownTime:J

.field private mEventTime:J

.field private mFlags:I

.field private mKeyCode:I

.field private mMetaState:I

.field private mRepeatCount:I

.field private mScanCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1435
    new-instance v0, Landroid/view/KeyEvent$1;

    invoke-direct {v0}, Landroid/view/KeyEvent$1;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .parameter "action"
    .parameter "code"

    .prologue
    .line 645
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 646
    iput p1, p0, Landroid/view/KeyEvent;->mAction:I

    .line 647
    iput p2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 648
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 649
    return-void
.end method

.method public constructor <init>(JJIII)V
    .registers 8
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "code"
    .parameter "repeat"

    .prologue
    .line 665
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 666
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 667
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 668
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 669
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 670
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 671
    return-void
.end method

.method public constructor <init>(JJIIII)V
    .registers 9
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "code"
    .parameter "repeat"
    .parameter "metaState"

    .prologue
    .line 688
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 689
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 690
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 691
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 692
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 693
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 694
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 695
    return-void
.end method

.method public constructor <init>(JJIIIIII)V
    .registers 11
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "code"
    .parameter "repeat"
    .parameter "metaState"
    .parameter "deviceId"
    .parameter "scancode"

    .prologue
    .line 715
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 716
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 717
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 718
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 719
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 720
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 721
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 722
    iput p9, p0, Landroid/view/InputEvent;->mDeviceId:I

    .line 723
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 724
    return-void
.end method

.method public constructor <init>(JJIIIIIII)V
    .registers 12
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "code"
    .parameter "repeat"
    .parameter "metaState"
    .parameter "deviceId"
    .parameter "scancode"
    .parameter "flags"

    .prologue
    .line 745
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 746
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 747
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 748
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 749
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 750
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 751
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 752
    iput p9, p0, Landroid/view/InputEvent;->mDeviceId:I

    .line 753
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 754
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 755
    return-void
.end method

.method public constructor <init>(JJIIIIIIII)V
    .registers 13
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "code"
    .parameter "repeat"
    .parameter "metaState"
    .parameter "deviceId"
    .parameter "scancode"
    .parameter "flags"
    .parameter "source"

    .prologue
    .line 777
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 778
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 779
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 780
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 781
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 782
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 783
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 784
    iput p9, p0, Landroid/view/InputEvent;->mDeviceId:I

    .line 785
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 786
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 787
    iput p12, p0, Landroid/view/InputEvent;->mSource:I

    .line 788
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;II)V
    .registers 8
    .parameter "time"
    .parameter "characters"
    .parameter "deviceId"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 802
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 803
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 804
    iput-wide p1, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 805
    iput-object p3, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 806
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 807
    iput v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 808
    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 809
    iput p4, p0, Landroid/view/InputEvent;->mDeviceId:I

    .line 810
    iput p5, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 811
    const/16 v0, 0x101

    iput v0, p0, Landroid/view/InputEvent;->mSource:I

    .line 812
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 1452
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1453
    invoke-virtual {p0, p1}, Landroid/view/KeyEvent;->readBaseFromParcel(Landroid/os/Parcel;)V

    .line 1455
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1461
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1462
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1463
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .registers 4
    .parameter "origEvent"

    .prologue
    .line 817
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 818
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 819
    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 820
    iget v0, p1, Landroid/view/KeyEvent;->mAction:I

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 821
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 822
    iget v0, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 823
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 824
    iget v0, p1, Landroid/view/InputEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/InputEvent;->mDeviceId:I

    .line 825
    iget v0, p1, Landroid/view/InputEvent;->mSource:I

    iput v0, p0, Landroid/view/InputEvent;->mSource:I

    .line 826
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 827
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 828
    iget-object v0, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 829
    return-void
.end method

.method private constructor <init>(Landroid/view/KeyEvent;I)V
    .registers 5
    .parameter "origEvent"
    .parameter "action"

    .prologue
    .line 897
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 898
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 899
    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 900
    iput p2, p0, Landroid/view/KeyEvent;->mAction:I

    .line 901
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 902
    iget v0, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 903
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 904
    iget v0, p1, Landroid/view/InputEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/InputEvent;->mDeviceId:I

    .line 905
    iget v0, p1, Landroid/view/InputEvent;->mSource:I

    iput v0, p0, Landroid/view/InputEvent;->mSource:I

    .line 906
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 907
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 910
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;JI)V
    .registers 7
    .parameter "origEvent"
    .parameter "eventTime"
    .parameter "newRepeat"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 843
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 844
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 845
    iput-wide p2, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 846
    iget v0, p1, Landroid/view/KeyEvent;->mAction:I

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 847
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 848
    iput p4, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 849
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 850
    iget v0, p1, Landroid/view/InputEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/InputEvent;->mDeviceId:I

    .line 851
    iget v0, p1, Landroid/view/InputEvent;->mSource:I

    iput v0, p0, Landroid/view/InputEvent;->mSource:I

    .line 852
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 853
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 854
    iget-object v0, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 855
    return-void
.end method

.method static synthetic access$076(Landroid/view/KeyEvent;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return v0
.end method

.method public static changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 3
    .parameter "event"
    .parameter "action"

    .prologue
    .line 920
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;I)V

    return-object v0
.end method

.method public static changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 3
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 931
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 932
    .end local p0
    .local v0, event:Landroid/view/KeyEvent;
    iput p1, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 933
    return-object v0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;
    .registers 5
    .parameter "event"
    .parameter "eventTime"
    .parameter "newRepeat"

    .prologue
    .line 868
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    return-object v0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;
    .registers 6
    .parameter "event"
    .parameter "eventTime"
    .parameter "newRepeat"
    .parameter "newFlags"

    .prologue
    .line 884
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 885
    .local v0, ret:Landroid/view/KeyEvent;
    iput-wide p1, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 886
    iput p3, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 887
    iput p4, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 888
    return-object v0
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/KeyEvent;
    .registers 2
    .parameter "in"

    .prologue
    .line 1449
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static getDeadChar(II)I
    .registers 3
    .parameter "accent"
    .parameter "c"

    .prologue
    .line 565
    invoke-static {p0, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v0

    return v0
.end method

.method public static getMaxKeyCode()I
    .registers 1

    .prologue
    .line 556
    const/16 v0, 0x6e

    return v0
.end method

.method public static isModifierKey(I)Z
    .registers 2
    .parameter "keyCode"

    .prologue
    .line 1000
    const/16 v0, 0x3b

    if-eq p0, v0, :cond_14

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_14

    const/16 v0, 0x39

    if-eq p0, v0, :cond_14

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_14

    const/16 v0, 0x3f

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private native native_hasDefaultAction(I)Z
.end method

.method private native native_isSystemKey(I)Z
.end method


# virtual methods
.method public final dispatch(Landroid/view/KeyEvent$Callback;)Z
    .registers 3
    .parameter "receiver"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1267
    invoke-virtual {p0, p1, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z
    .registers 11
    .parameter "receiver"
    .parameter "state"
    .parameter "target"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1283
    iget v4, p0, Landroid/view/KeyEvent;->mAction:I

    packed-switch v4, :pswitch_data_78

    move v4, v5

    .line 1333
    :goto_8
    return v4

    .line 1285
    :pswitch_9
    iget v4, p0, Landroid/view/KeyEvent;->mFlags:I

    const v5, -0x40000001

    and-int/2addr v4, v5

    iput v4, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1288
    iget v4, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v4, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 1289
    .local v3, res:Z
    if-eqz p2, :cond_29

    .line 1290
    if-eqz v3, :cond_2b

    iget v4, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    if-nez v4, :cond_2b

    iget v4, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v5, 0x4000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2b

    .line 1292
    invoke-virtual {p2, p0, p3}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_29
    :goto_29
    move v4, v3

    .line 1304
    goto :goto_8

    .line 1293
    :cond_2b
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1295
    :try_start_37
    iget v4, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v4, p0}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1297
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_42
    .catch Ljava/lang/AbstractMethodError; {:try_start_37 .. :try_end_42} :catch_76

    .line 1298
    const/4 v3, 0x1

    goto :goto_29

    .line 1309
    .end local v3           #res:Z
    :pswitch_44
    if-eqz p2, :cond_49

    .line 1310
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1312
    :cond_49
    iget v4, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v4, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_8

    .line 1314
    :pswitch_50
    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1315
    .local v1, count:I
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1316
    .local v0, code:I
    invoke-interface {p1, v0, v1, p0}, Landroid/view/KeyEvent$Callback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_5c

    move v4, v6

    .line 1317
    goto :goto_8

    .line 1319
    :cond_5c
    if-eqz v0, :cond_74

    .line 1320
    iput v5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1321
    iput v5, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1322
    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 1323
    .local v2, handled:Z
    if-eqz v2, :cond_6d

    .line 1324
    iput v6, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1325
    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 1327
    :cond_6d
    const/4 v4, 0x2

    iput v4, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1328
    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    move v4, v2

    .line 1329
    goto :goto_8

    .end local v2           #handled:Z
    :cond_74
    move v4, v5

    .line 1331
    goto :goto_8

    .line 1300
    .end local v0           #code:I
    .end local v1           #count:I
    .restart local v3       #res:Z
    :catch_76
    move-exception v4

    goto :goto_29

    .line 1283
    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_9
        :pswitch_44
        :pswitch_50
    .end packed-switch
.end method

.method public final getAction()I
    .registers 2

    .prologue
    .line 1050
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    return v0
.end method

.method public final getCharacters()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1108
    iget-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayLabel()C
    .registers 3

    .prologue
    .line 1175
    iget v0, p0, Landroid/view/InputEvent;->mDeviceId:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v0

    return v0
.end method

.method public final getDownTime()J
    .registers 3

    .prologue
    .line 1146
    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    return-wide v0
.end method

.method public final getEventTime()J
    .registers 3

    .prologue
    .line 1157
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    return-wide v0
.end method

.method public final getFlags()I
    .registers 2

    .prologue
    .line 988
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return v0
.end method

.method public final getKeyCode()I
    .registers 2

    .prologue
    .line 1096
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    return v0
.end method

.method public getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z
    .registers 4
    .parameter "results"

    .prologue
    .line 1224
    iget v0, p0, Landroid/view/InputEvent;->mDeviceId:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z

    move-result v0

    return v0
.end method

.method public final getKeyboardDevice()I
    .registers 2

    .prologue
    .line 1167
    iget v0, p0, Landroid/view/InputEvent;->mDeviceId:I

    return v0
.end method

.method public getMatch([C)C
    .registers 3
    .parameter "chars"

    .prologue
    .line 1231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    return v0
.end method

.method public getMatch([CI)C
    .registers 5
    .parameter "chars"
    .parameter "modifiers"

    .prologue
    .line 1243
    iget v0, p0, Landroid/view/InputEvent;->mDeviceId:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result v0

    return v0
.end method

.method public final getMetaState()I
    .registers 2

    .prologue
    .line 979
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    return v0
.end method

.method public getNumber()C
    .registers 3

    .prologue
    .line 1252
    iget v0, p0, Landroid/view/InputEvent;->mDeviceId:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getNumber(I)C

    move-result v0

    return v0
.end method

.method public final getRepeatCount()I
    .registers 2

    .prologue
    .line 1131
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    return v0
.end method

.method public final getScanCode()I
    .registers 2

    .prologue
    .line 1119
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    return v0
.end method

.method public getUnicodeChar()I
    .registers 2

    .prologue
    .line 1194
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p0, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    return v0
.end method

.method public getUnicodeChar(I)I
    .registers 4
    .parameter "meta"

    .prologue
    .line 1212
    iget v0, p0, Landroid/view/InputEvent;->mDeviceId:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v0

    return v0
.end method

.method public final hasDefaultAction()Z
    .registers 2

    .prologue
    .line 961
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-direct {p0, v0}, Landroid/view/KeyEvent;->native_hasDefaultAction(I)Z

    move-result v0

    return v0
.end method

.method public final isAltPressed()Z
    .registers 2

    .prologue
    .line 1015
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isCanceled()Z
    .registers 2

    .prologue
    .line 1058
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isDown()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 946
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final isLongPress()Z
    .registers 2

    .prologue
    .line 1086
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isPrintingKey()Z
    .registers 3

    .prologue
    .line 1259
    iget v0, p0, Landroid/view/InputEvent;->mDeviceId:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    return v0
.end method

.method public final isShiftPressed()Z
    .registers 2

    .prologue
    .line 1028
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isSymPressed()Z
    .registers 2

    .prologue
    .line 1040
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isSystem()Z
    .registers 2

    .prologue
    .line 956
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-direct {p0, v0}, Landroid/view/KeyEvent;->native_isSystemKey(I)Z

    move-result v0

    return v0
.end method

.method public final isTracking()Z
    .registers 2

    .prologue
    .line 1078
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final startTracking()V
    .registers 3

    .prologue
    .line 1069
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1070
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyEvent{action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " repeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " meta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scancode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 1466
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1468
    invoke-virtual {p0, p1}, Landroid/view/KeyEvent;->writeBaseToParcel(Landroid/os/Parcel;)V

    .line 1470
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1471
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1472
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1473
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1474
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1475
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1476
    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1477
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1478
    return-void
.end method
