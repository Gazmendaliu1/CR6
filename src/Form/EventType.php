<?php

namespace App\Form;

use App\Entity\Event;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;


class EventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name',null, [
                'attr' => ['class' => 'form-control',
                "placeholder" => "Enter the name of the event"],
                
            ])
            ->add('date',null, [
                'attr' => ['class' => 'form-control'],
                "widget" => "single_text"
            ])
            ->add('description',null, [
                'attr' => ['class' => 'form-control',
                "placeholder" => "Write a Description about the Event you wuld like to create!"],
            ])
            ->add('picture',null, [
                'attr' => ['class' => 'form-control',
                "placeholder" => "Please upload a picture with URL (if no picture pls enter a text )"],
                
            ])
            ->add('capacity',null, [
                'attr' => ['class' => 'form-control',
                "placeholder" => "Enter the capacity of the Event"],
            ])
            ->add('email',null, [
                'attr' => ['class' => 'form-control',
                "placeholder" => "Enter your email"],
            ])
            ->add('phonecontact',null, [
                'attr' => ['class' => 'form-control',
                "placeholder" => "Enter you phone number for Contact (please leave no spaces in between!)"],
            ])
            ->add('address',null, [
                'attr' => ['class' => 'form-control',
                "placeholder" => "Enter your Address"],
            ])
            ->add('url',null, [
                'attr' => ['class' => 'form-control',
                "placeholder" => "Enter the URL of the event"],
            ])
            ->add('type',ChoiceType::class , [
                'attr' => ['class' => 'form-control'],
                'choices'=> [
                    "Music" => "Music",
                    "Film" => "Film",
                    "Food" => "Food",
                    "Theater" => "Theater",
                    "Sport" => "Sport",
                ]
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}
