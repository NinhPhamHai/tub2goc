.class public Lcom/floatingtunes/youtubeplayer/topmusic/util/FirebaseUtil;
.super Ljava/lang/Object;
.source "FirebaseUtil.java"


# direct methods
.method public static addAnalyticsEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 20
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "bundle must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static addDownloadEvent()V
    .locals 4

    .line 32
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "download music"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "download_event"

    const-string v3, "click"

    .line 33
    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 32
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    return-void
.end method

.method public static addFabricEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 26
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string p0, "notification"

    .line 27
    invoke-virtual {v1, p0, p1}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 26
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    return-void
.end method

.method public static launchLocal()V
    .locals 4

    .line 45
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "launch local music"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "local_music"

    const-string v3, "click"

    .line 46
    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 45
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    return-void
.end method
