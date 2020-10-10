.class Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate$1;
.super Lch/blinkenlights/android/medialibrary/LibraryObserver;
.source "ScheduledLibraryUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate$1;->this$0:Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;

    invoke-direct {p0}, Lch/blinkenlights/android/medialibrary/LibraryObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lch/blinkenlights/android/medialibrary/LibraryObserver$Type;JZ)V
    .locals 0

    if-nez p4, :cond_0

    .line 138
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate$1;->this$0:Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;->access$000(Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;)Landroid/app/job/JobParameters;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 139
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate$1;->this$0:Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;->access$100(Lch/blinkenlights/android/vanilla/ScheduledLibraryUpdate;)V

    :cond_0
    return-void
.end method
