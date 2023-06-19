protocol AlarmDelegate {
    func alarmDidRing()
}

class AlarmClock {
    var delegate:  AlarmDelegate?
    
    func ringAlarm() {
        print("Будильник сработал!")
        delegate?.alarmDidRing()
    }
}

class ViewController {
    let alarmClock = AlarmClock()
    
    func alarmDidRing(){
        print ("Получено событие: будильник сработал!")
    }
}

let alarm = ViewController()
alarm.alarmClock.ringAlarm()
