.class public final enum Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;
.super Ljava/lang/Enum;
.source "LibraryObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/medialibrary/LibraryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

.field public static final enum PLAYLIST:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

.field public static final enum SONG:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    const/4 v1, 0x0

    const-string v2, "SONG"

    invoke-direct {v0, v2, v1}, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->SONG:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    .line 30
    new-instance v0, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    const/4 v2, 0x1

    const-string v3, "PLAYLIST"

    invoke-direct {v0, v3, v2}, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->PLAYLIST:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    const/4 v0, 0x2

    .line 28
    new-array v0, v0, [Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    sget-object v3, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->SONG:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    aput-object v3, v0, v1

    sget-object v1, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->PLAYLIST:Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    aput-object v1, v0, v2

    sput-object v0, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->$VALUES:[Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;
    .locals 1

    .line 28
    const-class v0, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    return-object p0
.end method

.method public static values()[Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;
    .locals 1

    .line 28
    sget-object v0, Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->$VALUES:[Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    invoke-virtual {v0}, [Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;

    return-object v0
.end method
