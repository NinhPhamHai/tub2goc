.class public Lch/blinkenlights/android/vanilla/PrefDefaults;
.super Ljava/lang/Object;
.source "PrefDefaults.java"


# static fields
.field public static final COVER_LONGPRESS_ACTION:Lch/blinkenlights/android/vanilla/Action;

.field public static final COVER_PRESS_ACTION:Lch/blinkenlights/android/vanilla/Action;

.field public static final SHAKE_ACTION:Lch/blinkenlights/android/vanilla/Action;

.field public static final SWIPE_DOWN_ACTION:Lch/blinkenlights/android/vanilla/Action;

.field public static final SWIPE_UP_ACTION:Lch/blinkenlights/android/vanilla/Action;

.field public static final TAB_ORDER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Lch/blinkenlights/android/vanilla/Action;->PlayPause:Lch/blinkenlights/android/vanilla/Action;

    sput-object v0, Lch/blinkenlights/android/vanilla/PrefDefaults;->COVER_LONGPRESS_ACTION:Lch/blinkenlights/android/vanilla/Action;

    .line 34
    sget-object v0, Lch/blinkenlights/android/vanilla/Action;->ToggleControls:Lch/blinkenlights/android/vanilla/Action;

    sput-object v0, Lch/blinkenlights/android/vanilla/PrefDefaults;->COVER_PRESS_ACTION:Lch/blinkenlights/android/vanilla/Action;

    .line 57
    sget-object v0, Lch/blinkenlights/android/vanilla/Action;->NextSong:Lch/blinkenlights/android/vanilla/Action;

    sput-object v0, Lch/blinkenlights/android/vanilla/PrefDefaults;->SHAKE_ACTION:Lch/blinkenlights/android/vanilla/Action;

    .line 60
    sget-object v0, Lch/blinkenlights/android/vanilla/Action;->Nothing:Lch/blinkenlights/android/vanilla/Action;

    sput-object v0, Lch/blinkenlights/android/vanilla/PrefDefaults;->SWIPE_DOWN_ACTION:Lch/blinkenlights/android/vanilla/Action;

    .line 61
    sput-object v0, Lch/blinkenlights/android/vanilla/PrefDefaults;->SWIPE_UP_ACTION:Lch/blinkenlights/android/vanilla/Action;

    const/4 v0, 0x0

    .line 62
    sput-object v0, Lch/blinkenlights/android/vanilla/PrefDefaults;->TAB_ORDER:Ljava/lang/String;

    return-void
.end method
