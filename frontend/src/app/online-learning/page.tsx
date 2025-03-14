import Title from '@/app/_components/Title'
import OnlineLearningLectureCardSlide from './_components/carousel/OnlineLearningLectureCardSlide'
import Header from '@/app/_components/Header'
import OnlineLearningLayout from '@/app/online-learning/_components/OnlineLearningLayout'

export default function OnlineLearningMain() {
  return (
    <OnlineLearningLayout>
      <Header />
      <div className="relative m-auto">
        <Title
          CourseTitle="화상 수업"
          CourseDescription="한국인 강사와 함께 한국어를 즐겁게 배워보아요!"
        />
        <OnlineLearningLectureCardSlide />
      </div>
    </OnlineLearningLayout>
  )
}
