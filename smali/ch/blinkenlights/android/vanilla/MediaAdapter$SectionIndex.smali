.class Lch/blinkenlights/android/vanilla/MediaAdapter$SectionIndex;
.super Ljava/lang/Object;
.source "MediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/MediaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionIndex"
.end annotation


# instance fields
.field private hint:Ljava/lang/Object;

.field private position:I

.field final synthetic this$0:Lch/blinkenlights/android/vanilla/MediaAdapter;


# direct methods
.method public constructor <init>(Lch/blinkenlights/android/vanilla/MediaAdapter;Ljava/lang/Object;I)V
    .locals 0

    .line 658
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/MediaAdapter$SectionIndex;->this$0:Lch/blinkenlights/android/vanilla/MediaAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object p2, p0, Lch/blinkenlights/android/vanilla/MediaAdapter$SectionIndex;->hint:Ljava/lang/Object;

    .line 660
    iput p3, p0, Lch/blinkenlights/android/vanilla/MediaAdapter$SectionIndex;->position:I

    return-void
.end method

.method static synthetic access$000(Lch/blinkenlights/android/vanilla/MediaAdapter$SectionIndex;)I
    .locals 0

    .line 655
    iget p0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter$SectionIndex;->position:I

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 668
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MediaAdapter$SectionIndex;->hint:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
